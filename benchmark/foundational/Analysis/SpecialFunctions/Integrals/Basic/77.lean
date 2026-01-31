import Mathlib

lemma integral_norm_le_of_le (a b : ℝ) (f : ℝ → ℝ)
    (hf : IntervalIntegrable f volume a b)
    (hbound : ∀ x ∈ Set.Icc a b, ‖f x‖ ≤ 1) :
    ‖∫ x in a..b, f x‖ ≤ |b - a| := by
  sorry
