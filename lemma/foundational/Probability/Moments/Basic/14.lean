import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma moment_smul_left_abs_even
    {Ω : Type*} {m : MeasurableSpace Ω} (μ : MeasureTheory.Measure Ω)
    (a : ℝ) {X : Ω → ℝ} {p : ℕ} (hp : Even p) :
    ProbabilityTheory.moment (fun ω => a * X ω) p (μ := μ) =
      |a| ^ p * ProbabilityTheory.moment X p (μ := μ) := by
  have h₁ : (fun ω : Ω => (a * X ω) ^ p) = (fun ω : Ω => (a : ℝ) ^ p * (X ω) ^ p) := by
    funext ω
    have h₁ : (a * X ω) ^ p = (a : ℝ) ^ p * (X ω) ^ p := by
      calc
        (a * X ω) ^ p = (a : ℝ) ^ p * (X ω) ^ p := by
          -- Use the property of powers to expand (a * X ω)^p
          rw [mul_pow]
          <;> ring_nf
        _ = (a : ℝ) ^ p * (X ω) ^ p := by rfl
    rw [h₁]
    <;> simp [mul_pow]
    <;> ring_nf
  
  have h₂ : ProbabilityTheory.moment (fun ω => a * X ω) p (μ := μ) = (a : ℝ) ^ p * ProbabilityTheory.moment X p (μ := μ) := by
    calc
      ProbabilityTheory.moment (fun ω => a * X ω) p (μ := μ) = ∫ ω : Ω, (a * X ω) ^ p ∂μ := by
        simp [ProbabilityTheory.moment]
      _ = ∫ ω : Ω, (a : ℝ) ^ p * (X ω) ^ p ∂μ := by
        -- Use the fact that the functions are equal to change the integrand
        congr
        <;> funext ω
        <;> rw [h₁]
      _ = (a : ℝ) ^ p * ∫ ω : Ω, (X ω : ℝ) ^ p ∂μ := by
        -- Factor out the constant (a : ℝ)^p from the integral
        have h₃ : ∫ ω : Ω, (a : ℝ) ^ p * (X ω : ℝ) ^ p ∂μ = (a : ℝ) ^ p * ∫ ω : Ω, (X ω : ℝ) ^ p ∂μ := by
          -- Use the property of integrals to factor out the constant
          rw [MeasureTheory.integral_mul_left]
        rw [h₃]
      _ = (a : ℝ) ^ p * ProbabilityTheory.moment X p (μ := μ) := by
        -- Recognize that the integral is the p-th moment of X
        simp [ProbabilityTheory.moment]
        <;> ring_nf
  
  have h₃ : (a : ℝ) ^ p = |a| ^ p := by
    have h₄ : Even p := hp
    have h₅ : ∃ k : ℕ, p = 2 * k := by
      rw [even_iff_two_dvd] at h₄
      obtain ⟨k, hk⟩ := h₄
      exact ⟨k, by linarith⟩
    obtain ⟨k, hk⟩ := h₅
    have h₆ : (a : ℝ) ^ p = (a : ℝ) ^ (2 * k) := by
      rw [hk]
      <;> simp [pow_mul]
    have h₇ : |a| ^ p = |a| ^ (2 * k) := by
      rw [hk]
      <;> simp [pow_mul]
    have h₈ : (a : ℝ) ^ (2 * k) = |a| ^ (2 * k) := by
      have h₉ : (a : ℝ) ^ (2 * k) = (a ^ 2) ^ k := by
        rw [show (2 : ℕ) * k = 2 * k by rfl]
        rw [pow_mul]
        <;> ring_nf
      have h₁₀ : (|a| : ℝ) ^ (2 * k) = (a ^ 2) ^ k := by
        calc
          (|a| : ℝ) ^ (2 * k) = (|a| ^ 2) ^ k := by
            rw [← pow_mul]
            <;> ring_nf
          _ = (a ^ 2) ^ k := by
            have h₁₁ : (|a| : ℝ) ^ 2 = a ^ 2 := by
              simp [sq_abs]
            rw [h₁₁]
            <;> ring_nf
      rw [h₉, h₁₀]
    calc
      (a : ℝ) ^ p = (a : ℝ) ^ (2 * k) := by rw [h₆]
      _ = |a| ^ (2 * k) := by rw [h₈]
      _ = |a| ^ p := by rw [h₇]
  
  have h₄ : ProbabilityTheory.moment (fun ω => a * X ω) p (μ := μ) = |a| ^ p * ProbabilityTheory.moment X p (μ := μ) := by
    calc
      ProbabilityTheory.moment (fun ω => a * X ω) p (μ := μ) = (a : ℝ) ^ p * ProbabilityTheory.moment X p (μ := μ) := by
        rw [h₂]
      _ = |a| ^ p * ProbabilityTheory.moment X p (μ := μ) := by
        rw [h₃]
        <;> ring_nf
        <;> simp_all [mul_assoc]
        <;> norm_cast
        <;> field_simp
        <;> ring_nf
        <;> simp_all [mul_assoc]
        <;> norm_cast
  
  rw [h₄]
  <;> simp_all