import Mathlib

lemma exists_hasDerivAt_eq_slope_endpoint_strict {f : ℝ → ℝ} {a b : ℝ}
    (hab : a < b)
    (hf : ContinuousOn f (Set.Icc a b))
    (hfd : ∀ x ∈ Set.Ioo a b, HasDerivAt f (deriv f x) x)
    (hstrict : ∀ x ∈ Set.Ioo a b, deriv f x ≠ (f b - f a) / (b - a)) :
    False := by
  sorry
