import Mathlib

lemma exists_derivWithin_eq_slope_Icc_of_hasDerivWithinAt {f : ℝ → ℝ} {a b : ℝ}
    (hab : a < b)
    (hf : ContinuousOn f (Set.Icc a b))
    (hf' : ∀ x ∈ Set.Icc a b, HasDerivWithinAt f (derivWithin f (Set.Icc a b) x) (Set.Icc a b) x) :
    ∃ c ∈ Set.Ioo a b, derivWithin f (Set.Icc a b) c = (f b - f a) / (b - a) := by
  sorry
