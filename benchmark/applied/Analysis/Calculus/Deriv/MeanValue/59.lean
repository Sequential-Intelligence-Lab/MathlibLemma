import Mathlib

lemma exist_c_between_deriv_bounds {f : ℝ → ℝ} {a b : ℝ} {m M : ℝ}
    (hab : a < b)
    (hfc : ContinuousOn f (Set.Icc a b))
    (hfd : DifferentiableOn ℝ f (Set.Ioo a b))
    (hbound : ∀ x ∈ Set.Ioo a b, m ≤ deriv f x ∧ deriv f x ≤ M) :
    m * (b - a) ≤ f b - f a ∧ f b - f a ≤ M * (b - a) := by
  sorry
