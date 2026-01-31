import Mathlib

/-- If a function from `ℂ` to a strictly convex normed space is differentiable on a ball and its
image lies on a line, then the function is affine on that ball. -/
lemma eqOn_affine_of_image_subset_line
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] [StrictConvexSpace ℝ E]
    {f : ℂ → E} {c : ℂ} {R : ℝ} {x₀ v : E}
    (hR : 0 < R)
    (hDiff : DifferentiableOn ℂ f (Metric.ball c R))
    (hImage : f '' (Metric.ball c R) ⊆ {x | ∃ t : ℝ, x = x₀ + t • v}) :
    ∃ C : E, Set.EqOn f (fun z => f c + (z - c) • C) (Metric.ball c R) := by
  sorry
