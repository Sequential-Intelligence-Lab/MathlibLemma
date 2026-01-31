import Mathlib

lemma convexOn_of_deriv_mono_Icc {f : ℝ → ℝ} {a b : ℝ}
    (hf : ContinuousOn f (Set.Icc a b))
    (hfd : DifferentiableOn ℝ f (Set.Ioo a b))
    (hmono : MonotoneOn (fun x ↦ deriv f x) (Set.Ioo a b)) :
    ConvexOn ℝ (Set.Icc a b) f := by
  sorry
