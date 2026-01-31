import Mathlib

lemma sqrt_sq_ge (x : ℝ) :
    |x| ≤ √(x ^ 2) := by
  -- √(x^2) = |x|, so the goal becomes |x| ≤ |x|
  simpa [Real.sqrt_sq_eq_abs]