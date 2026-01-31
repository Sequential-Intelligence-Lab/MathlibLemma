import Mathlib

lemma integral_exp_comp (a b : ℝ) (f : ℝ → ℝ)
    (hderiv : ∀ x ∈ Set.Icc a b, HasDerivAt f (Real.exp x) x)
    (hf : ContinuousOn f (Set.Icc a b)) :
    ∫ x in a..b, Real.exp x = f b - f a := by
  sorry
