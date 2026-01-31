import Mathlib

lemma integral_add (a b : ℝ) (f g : ℝ → ℝ)
    (hf : IntervalIntegrable f volume a b)
    (hg : IntervalIntegrable g volume a b) :
    ∫ x in a..b, f x + g x = ∫ x in a..b, f x + ∫ x in a..b, g x := by
  sorry
