import Mathlib

lemma deriv_strictMono_of_convex {f : ℝ → ℝ} {a b : ℝ}
    (hfC : ContinuousOn f (Set.Icc a b))
    (hconv : StrictConvexOn ℝ (Set.Icc a b) f)
    (hfd : DifferentiableOn ℝ f (Set.Ioo a b)) :
    StrictMonoOn (fun x => deriv f x) (Set.Ioo a b) := by
  sorry
