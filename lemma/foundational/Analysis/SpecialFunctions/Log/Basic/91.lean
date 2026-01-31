import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.log_neg_on_between_zero_one :
    ∀ x ∈ Set.Ioo (0 : ℝ) 1, Real.log x < 0 := by
  -- Introduce the variable x and the hypothesis hx that x is in the interval (0, 1)
  rintro x ⟨hx₀, hx₁⟩
  -- Use the property of the logarithm function that log x < 0 if 0 < x < 1
  rw [Real.log_neg_iff]
  -- Verify that x is positive and x is less than 1
  <;> linarith
  -- Use the fact that the logarithm function is negative for x in (0, 1)
  <;> apply Real.log_neg
  -- Verify that x is positive and x is less than 1
  <;> linarith