import Mathlib

lemma exists_derivWithin_eq_slope_Icc {f : ℝ → ℝ} {a b : ℝ}
    (hab : a < b) (hf : ContinuousOn f (Set.Icc a b))
    (hfd : DifferentiableOn ℝ f (Set.Ioo a b)) :
    ∃ c ∈ Set.Ioo a b, derivWithin f (Set.Icc a b) c = (f b - f a) / (b - a) := by
  sorry
