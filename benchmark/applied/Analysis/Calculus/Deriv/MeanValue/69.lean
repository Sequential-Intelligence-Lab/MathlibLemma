import Mathlib

lemma deriv_strictAnti_of_concave {f : ℝ → ℝ} {a b : ℝ}
    (hfC : ContinuousOn f (Set.Icc a b))
    (hconc : StrictConcaveOn ℝ (Set.Icc a b) f)
    (hfd : DifferentiableOn ℝ f (Set.Ioo a b)) :
    StrictAntiOn (fun x => deriv f x) (Set.Ioo a b) := by
  sorry
