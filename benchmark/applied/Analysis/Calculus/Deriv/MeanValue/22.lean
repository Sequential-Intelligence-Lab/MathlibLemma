import Mathlib

lemma strictAntiOn_of_deriv_neg_closure {f : ℝ → ℝ} {a b : ℝ}
    (hfc : ContinuousOn f (Set.Icc a b))
    (hfd : DifferentiableOn ℝ f (Set.Ioo a b))
    (hf' : ∀ x ∈ Set.Ioo a b, deriv f x < 0) :
    StrictAntiOn f (Set.Icc a b) := by
  sorry
