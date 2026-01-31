import Mathlib

lemma meanValueTheorem_vector {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    {f : ℝ → E} {a b : ℝ}
    (hab : a < b)
    (hfC : ContinuousOn f (Set.Icc a b))
    (hfD : DifferentiableOn ℝ f (Set.Ioo a b)) :
    ∃ c ∈ Set.Ioo a b, ‖f b - f a‖ ≤ (b - a) * ‖deriv f c‖ := by
  sorry
