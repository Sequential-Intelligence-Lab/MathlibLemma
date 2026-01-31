import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_monotone :
    Monotone Real.sqrt := by
  have h_main : ∀ (x y : ℝ), x ≤ y → Real.sqrt x ≤ Real.sqrt y := by
    intro x y hxy
    by_cases hx : x < 0
    · -- Case: x < 0
      have h₁ : Real.sqrt x = 0 := by
        rw [Real.sqrt_eq_zero_of_nonpos] <;> linarith
      have h₂ : Real.sqrt y ≥ 0 := Real.sqrt_nonneg y
      rw [h₁]
      linarith
    · -- Case: x ≥ 0
      have hx' : 0 ≤ x := by linarith
      -- Use the fact that sqrt is monotone on non-negative reals
      have h₁ : Real.sqrt x ≤ Real.sqrt y := by
        apply Real.sqrt_le_sqrt
        linarith
      exact h₁
  
  -- Use the main lemma to prove that Real.sqrt is monotone
  exact fun x y hxy => h_main x y hxy