import Mathlib

lemma exists_ratio_derivWithin_eq_ratio_slope_Icc {f g : ℝ → ℝ} {a b : ℝ}
    (hab : a < b)
    (hf : ContinuousOn f (Set.Icc a b))
    (hg : ContinuousOn g (Set.Icc a b))
    (hfd : DifferentiableOn ℝ f (Set.Ioo a b))
    (hgd : DifferentiableOn ℝ g (Set.Ioo a b)) :
    ∃ c ∈ Set.Ioo a b,
      (g b - g a) * derivWithin f (Set.Icc a b) c =
        (f b - f a) * derivWithin g (Set.Icc a b) c := by
  sorry
