import Mathlib

lemma integral_nonneg_of_nonneg (a b : ℝ) (f : ℝ → ℝ)
    (hf : IntervalIntegrable f volume a b)
    (hnonneg : ∀ x ∈ Set.Icc a b, 0 ≤ f x) :
    0 ≤ ∫ x in a..b, f x := by
  sorry
