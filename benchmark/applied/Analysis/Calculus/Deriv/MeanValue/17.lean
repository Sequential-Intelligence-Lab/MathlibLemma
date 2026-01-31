import Mathlib

lemma exists_cIn_Icc_with_derivWithin_eq_zero {f : ℝ → ℝ} {a b : ℝ}
    (hfc : ContinuousOn f (Set.Icc a b))
    (hfd : DifferentiableOn ℝ f (Set.Icc a b))
    (hneq : f a = f b) (hab : a < b) :
    ∃ c ∈ Set.Icc a b, derivWithin f (Set.Icc a b) c = 0 := by
  sorry
