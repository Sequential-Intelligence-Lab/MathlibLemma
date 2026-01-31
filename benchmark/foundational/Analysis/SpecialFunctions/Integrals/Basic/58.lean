import Mathlib

lemma integral_abs_le_integral_abs (a b : ℝ) (f : ℝ → ℝ)
    (hf : IntervalIntegrable f volume a b) :
    |∫ x in a..b, f x| ≤ ∫ x in a..b, |f x| := by
  sorry
