import Mathlib

/-- If a map from `ℂ` to `ℂ` is differentiable on a ball and an isometry on that ball, then its
derivative has constant norm `1` on the ball. -/
lemma norm_deriv_eq_one_of_isometryOn_ball
    {f : ℂ → ℂ} {c : ℂ} {R : ℝ}
    (hR : 0 < R)
    (hDiff : DifferentiableOn ℂ f (Metric.ball c R))
    (hisom : ∀ ⦃x y : ℂ⦄,
      x ∈ Metric.ball c R → y ∈ Metric.ball c R →
      dist (f x) (f y) = dist x y) :
    ∀ z ∈ Metric.ball c R, ‖deriv f z‖ = 1 := by
  sorry