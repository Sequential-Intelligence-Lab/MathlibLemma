import Mathlib

lemma integral_substitution_mul (a b : ℝ) (f : ℝ → ℝ) (g : ℝ → ℝ)
    (hderiv : ∀ x ∈ Set.Icc a b, HasDerivAt g (f x) x)
    (hg : ContinuousOn g (Set.Icc a b))
    (hint : IntervalIntegrable (fun x => f x * (g x)) volume a b) :
    ∫ x in a..b, f x * g x =
      (g b)^2 / 2 - (g a)^2 / 2 := by
  sorry
