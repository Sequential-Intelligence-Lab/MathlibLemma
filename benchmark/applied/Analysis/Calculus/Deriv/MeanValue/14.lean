import Mathlib

lemma exists_cIn_Icc_with_deriv_eq_zero {f : ℝ → ℝ} {a b : ℝ}
    (hfc : ContinuousOn f (Set.Icc a b))
    (hfd : DifferentiableOn ℝ f (Set.Ioo a b))
    (hneq : f a = f b) (hab : a < b) :
    ∃ c ∈ Set.Ioo a b, deriv f c = 0 := by
  sorry
