import Mathlib

lemma exists_cIn_Ioc_with_deriv_eq_zero {f : ℝ → ℝ} {a b : ℝ}
    (hfc : ContinuousOn f (Set.Icc a b))
    (hfd : DifferentiableOn ℝ f (Set.Ioc a b))
    (hneq : f a = f b) (hab : a < b) :
    ∃ c ∈ Set.Ioc a b, deriv f c = 0 := by
  sorry
