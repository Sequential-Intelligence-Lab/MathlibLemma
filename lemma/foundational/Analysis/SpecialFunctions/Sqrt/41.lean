import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma differentiableAt_sqrt' {x : ℝ} (hx : x ≠ 0) :
    DifferentiableAt ℝ Real.sqrt x := by
  have h_main : DifferentiableAt ℝ Real.sqrt x := by
    by_cases hx' : x > 0
    · -- Case 1: x > 0
      -- Use the fact that the square root function has a derivative at x > 0
      have h : HasDerivAt Real.sqrt (1 / (2 * Real.sqrt x)) x := by
        apply Real.hasDerivAt_sqrt
        <;> linarith
      -- Deduce differentiability from the derivative
      exact h.differentiableAt
    · -- Case 2: x < 0 (since x ≠ 0 and not x > 0)
      have hx'' : x < 0 := by
        by_contra h
        -- If x is not < 0 and not > 0, then x = 0, which contradicts hx
        have h₁ : x ≥ 0 := by linarith
        have h₂ : x > 0 := by
          by_contra h₂
          have h₃ : x = 0 := by linarith
          contradiction
        contradiction
      -- Choose ε = -x / 2 > 0
      have h₁ : 0 < -x / 2 := by linarith
      -- Define the neighborhood (x - ε, x + ε)
      have h₂ : ∀ y ∈ Set.Ioo (x - (-x / 2)) (x + (-x / 2)), Real.sqrt y = 0 := by
        intro y hy
        have h₃ : y < 0 := by
          have h₄ : y < x + (-x / 2) := hy.2
          have h₅ : x + (-x / 2) = x / 2 := by ring
          have h₆ : y < x / 2 := by linarith
          have h₇ : x / 2 < 0 := by
            have h₈ : x < 0 := hx''
            linarith
          linarith
        have h₄ : Real.sqrt y = 0 := by
          rw [Real.sqrt_eq_zero_of_nonpos] <;> linarith
        exact h₄
      -- Use the fact that sqrt is locally constant to show differentiability
      have h₃ : HasDerivAt Real.sqrt 0 x := by
        have h₄ : HasDerivAt (fun y : ℝ => (0 : ℝ)) 0 x := by
          simpa using hasDerivAt_const x 0
        have h₅ : ∀ᶠ (y : ℝ) in nhds x, Real.sqrt y = (0 : ℝ) := by
          filter_upwards [Ioo_mem_nhds (by linarith : x - (-x / 2) < x) (by linarith : x < x + (-x / 2))] with y hy
          exact h₂ y hy
        have h₆ : HasDerivAt Real.sqrt 0 x := HasDerivAt.congr_of_eventuallyEq h₄ h₅
        exact h₆
      -- Deduce differentiability from the derivative
      have h₄ : DifferentiableAt ℝ Real.sqrt x := h₃.differentiableAt
      exact h₄
  exact h_main