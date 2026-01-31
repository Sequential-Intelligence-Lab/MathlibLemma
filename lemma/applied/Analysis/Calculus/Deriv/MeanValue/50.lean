import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma deriv_log_abs_of_pos {f : ℝ → ℝ} {x : ℝ}
    (hpos : 0 < f x)
    (hfd : HasDerivAt f (deriv f x) x) :
    HasDerivAt (fun t => Real.log (|f t|)) (deriv f x / f x) x := by
  have h₁ : ∀ᶠ (t : ℝ) in nhds x, 0 < f t := by
    have h₁₀ : ContinuousAt f x := hfd.continuousAt
    have h₁₁ : 0 < f x := hpos
    have h₁₂ : ∀ᶠ (t : ℝ) in nhds x, 0 < f t := by
      have h₁₃ : ContinuousAt (fun t : ℝ => f t) x := h₁₀
      have h₁₄ : (Set.Ioi (0 : ℝ)) ∈ nhds (f x) := by
        apply Ioi_mem_nhds
        linarith
      have h₁₅ : f ⁻¹' (Set.Ioi (0 : ℝ)) ∈ nhds x := h₁₃ h₁₄
      filter_upwards [h₁₅] with t ht
      exact ht
    exact h₁₂
  
  have h₂ : ∀ᶠ (t : ℝ) in nhds x, |f t| = f t := by
    filter_upwards [h₁] with t ht
    rw [abs_of_nonneg (le_of_lt ht)]
    <;>
    simp_all [abs_of_pos]
    <;>
    linarith
  
  have h₃ : ∀ᶠ (t : ℝ) in nhds x, Real.log (|f t|) = Real.log (f t) := by
    filter_upwards [h₂] with t ht
    rw [ht]
    <;>
    simp_all [abs_of_pos]
    <;>
    linarith
  
  have h₄ : HasDerivAt (fun t : ℝ => Real.log (f t)) (deriv f x / f x) x := by
    have h₄₁ : HasDerivAt f (deriv f x) x := hfd
    have h₄₂ : f x > 0 := hpos
    -- Use the chain rule to find the derivative of log(f(t))
    have h₄₃ : HasDerivAt (fun t : ℝ => Real.log (f t)) (deriv f x / f x) x := by
      -- Apply the chain rule: the derivative of log(f(t)) is (1/f(t)) * f'(t)
      have h₄₄ : HasDerivAt (fun t : ℝ => Real.log (f t)) ((f x)⁻¹ * deriv f x) x := (Real.hasDerivAt_log (by positivity)).comp x h₄₁
      have h₄₅ : (f x : ℝ) ≠ 0 := by positivity
      have h₄₆ : (deriv f x / f x : ℝ) = (f x)⁻¹ * deriv f x := by
        field_simp [h₄₅]
        <;> ring
      -- Use the fact that (f x)⁻¹ * deriv f x = deriv f x * (f x)⁻¹ to convert the derivative
      convert h₄₄ using 1
      <;> simp_all [h₄₆]
      <;> field_simp [h₄₅]
      <;> ring
    exact h₄₃
  
  have h₅ : HasDerivAt (fun t => Real.log (|f t|)) (deriv f x / f x) x := by
    have h₅₁ : HasDerivAt (fun t : ℝ => Real.log (f t)) (deriv f x / f x) x := h₄
    have h₅₂ : ∀ᶠ (t : ℝ) in nhds x, Real.log (|f t|) = Real.log (f t) := h₃
    have h₅₃ : HasDerivAt (fun t => Real.log (|f t|)) (deriv f x / f x) x := by
      apply HasDerivAt.congr_of_eventuallyEq h₅₁ h₅₂
      <;>
      simp_all [abs_of_pos]
      <;>
      linarith
    exact h₅₃
  
  exact h₅