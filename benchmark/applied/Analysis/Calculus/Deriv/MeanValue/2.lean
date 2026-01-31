import Mathlib

lemma exists_hasDerivWithinAt_eq_slope_Icc {f : ℝ → ℝ} {a b : ℝ}
    (hab : a < b) (hf : ContinuousOn f (Set.Icc a b))
    (hfd : ∀ x ∈ Set.Ioo a b, HasDerivWithinAt f (deriv f x) (Set.Icc a b) x) :
    ∃ c ∈ Set.Ioo a b, derivWithin f (Set.Icc a b) c = (f b - f a) / (b - a) := by
  sorry
