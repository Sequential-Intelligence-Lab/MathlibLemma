import Mathlib

lemma exists_hasDerivAt_eq_slope_interior {f : ℝ → ℝ} {a b : ℝ}
    (hab : a < b)
    (hf : ContinuousOn f (Set.Icc a b))
    (hfd : ∀ x ∈ Set.Icc a b, HasDerivAt f (deriv f x) x) :
    ∃ c ∈ Set.Ioo a b, deriv f c = (f b - f a) / (b - a) := by
  sorry
