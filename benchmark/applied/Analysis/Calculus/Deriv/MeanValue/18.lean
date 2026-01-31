import Mathlib

lemma exists_cIn_interior_with_deriv_eq_zero {f : ℝ → ℝ} {a b : ℝ}
    (hsub : Set.Icc a b ⊆ Set.univ)
    (hfc : ContinuousOn f (Set.Icc a b))
    (hfd : DifferentiableOn ℝ f (Set.Icc a b))
    (hneq : f a = f b) (hab : a < b) :
    ∃ c ∈ Set.Ioo a b, deriv f c = 0 := by
  sorry
