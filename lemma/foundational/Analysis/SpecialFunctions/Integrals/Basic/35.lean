import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma integral_cos_pow_on_0_pi (n : ℕ) :
    ∫ x in 0..Real.pi, Real.cos x ^ (2 * n + 1) = 0 := by
  have h₁ : (∫ x in 0..Real.pi, Real.cos x ^ (2 * n + 1)) = ∫ x in 0..Real.pi, (-Real.cos x) ^ (2 * n + 1) := by
    have h₂ : (∫ x in 0..Real.pi, Real.cos x ^ (2 * n + 1)) = ∫ x in 0..Real.pi, Real.cos (Real.pi - x) ^ (2 * n + 1) := by
      -- Use the substitution u = π - x to transform the integral
      have h₃ : (∫ x in 0..Real.pi, Real.cos x ^ (2 * n + 1)) = ∫ x in 0..Real.pi, Real.cos (Real.pi - x) ^ (2 * n + 1) := by
        -- Use the substitution u = π - x
        have h₄ : ∫ x in 0..Real.pi, Real.cos x ^ (2 * n + 1) = ∫ x in 0..Real.pi, Real.cos (Real.pi - x) ^ (2 * n + 1) := by
          rw [intervalIntegral.integral_comp_sub_left (fun x => Real.cos x ^ (2 * n + 1)) Real.pi]
          <;> simp [Real.cos_pi_sub]
          <;> ring_nf
          <;> norm_num
          <;> linarith [Real.pi_pos]
        exact h₄
      exact h₃
    have h₅ : ∫ x in 0..Real.pi, Real.cos (Real.pi - x) ^ (2 * n + 1) = ∫ x in 0..Real.pi, (-Real.cos x) ^ (2 * n + 1) := by
      -- Simplify cos(π - x) to -cos x
      have h₆ : (∫ x in 0..Real.pi, Real.cos (Real.pi - x) ^ (2 * n + 1)) = ∫ x in 0..Real.pi, (-Real.cos x) ^ (2 * n + 1) := by
        congr
        ext x
        rw [Real.cos_pi_sub]
        <;> ring_nf
      exact h₆
    -- Combine the two steps
    calc
      (∫ x in 0..Real.pi, Real.cos x ^ (2 * n + 1)) = ∫ x in 0..Real.pi, Real.cos (Real.pi - x) ^ (2 * n + 1) := h₂
      _ = ∫ x in 0..Real.pi, (-Real.cos x) ^ (2 * n + 1) := h₅
  
  have h₂ : (∫ x in 0..Real.pi, (-Real.cos x) ^ (2 * n + 1)) = -∫ x in 0..Real.pi, Real.cos x ^ (2 * n + 1) := by
    have h₃ : (∫ x in 0..Real.pi, (-Real.cos x) ^ (2 * n + 1)) = ∫ x in 0..Real.pi, - (Real.cos x ^ (2 * n + 1)) := by
      -- Prove that (-cos x)^(2n+1) = - (cos x)^(2n+1)
      congr
      ext x
      have h₄ : (-Real.cos x) ^ (2 * n + 1) = - (Real.cos x ^ (2 * n + 1)) := by
        -- Use the property of exponents to simplify
        calc
          (-Real.cos x) ^ (2 * n + 1) = (-1 : ℝ) ^ (2 * n + 1) * (Real.cos x) ^ (2 * n + 1) := by
            rw [← mul_pow]
            <;> ring_nf
          _ = - (Real.cos x) ^ (2 * n + 1) := by
            have h₅ : (-1 : ℝ) ^ (2 * n + 1) = -1 := by
              rw [show (2 * n + 1 : ℕ) = 2 * n + 1 by rfl]
              simp [pow_add, pow_mul, pow_one]
              <;> norm_num
            rw [h₅]
            <;> ring
            <;> simp [pow_add, pow_mul, pow_one]
            <;> norm_num
      rw [h₄]
      <;> ring
    rw [h₃]
    -- Move the negative sign outside the integral
    have h₄ : ∫ x in 0..Real.pi, - (Real.cos x ^ (2 * n + 1)) = -∫ x in 0..Real.pi, Real.cos x ^ (2 * n + 1) := by
      -- Use the linearity of the integral
      simp [intervalIntegral.integral_neg]
    rw [h₄]
  
  have h₃ : (∫ x in 0..Real.pi, Real.cos x ^ (2 * n + 1)) = 0 := by
    have h₄ : (∫ x in 0..Real.pi, Real.cos x ^ (2 * n + 1)) = -∫ x in 0..Real.pi, Real.cos x ^ (2 * n + 1) := by
      linarith
    have h₅ : (∫ x in 0..Real.pi, Real.cos x ^ (2 * n + 1)) = 0 := by
      have h₆ : (∫ x in 0..Real.pi, Real.cos x ^ (2 * n + 1)) + ∫ x in 0..Real.pi, Real.cos x ^ (2 * n + 1) = 0 := by
        linarith
      have h₇ : (∫ x in 0..Real.pi, Real.cos x ^ (2 * n + 1)) + ∫ x in 0..Real.pi, Real.cos x ^ (2 * n + 1) = 2 * ∫ x in 0..Real.pi, Real.cos x ^ (2 * n + 1) := by
        ring
      have h₈ : 2 * ∫ x in 0..Real.pi, Real.cos x ^ (2 * n + 1) = 0 := by
        linarith
      have h₉ : ∫ x in 0..Real.pi, Real.cos x ^ (2 * n + 1) = 0 := by
        linarith
      exact h₉
    exact h₅
  
  exact h₃