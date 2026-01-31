import Mathlib

lemma integral_odd_function (a : ℝ) (f : ℝ → ℝ)
    (hf : ∀ x, f (-x) = - f x)
    (hint : IntervalIntegrable f volume (-a) a) :
    ∫ x in -a..a, f x = 0 := by
  sorry
