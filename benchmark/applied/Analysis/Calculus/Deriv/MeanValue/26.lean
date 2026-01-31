import Mathlib

lemma concaveOn_of_deriv_anti_Icc {f : ℝ → ℝ} {a b : ℝ}
    (hf : ContinuousOn f (Set.Icc a b))
    (hfd : DifferentiableOn ℝ f (Set.Ioo a b))
    (hmono : AntitoneOn (fun x ↦ deriv f x) (Set.Ioo a b)) :
    ConcaveOn ℝ (Set.Icc a b) f := by
  sorry
