import Mathlib

/-- Maximum principle variant: a complex differentiable function with bounded derivative on a ball
attains its Lipschitz bound on the frontier of any smaller ball. -/
lemma norm_sub_le_mul_dist_of_deriv_bound_on_ball
    {f : ℂ → ℂ} {c : ℂ} {R r L : ℝ}
    (hrR : 0 < r) (hrR' : r ≤ R)
    (hDiff : DifferentiableOn ℂ f (Metric.ball c R))
    (hbound : ∀ z ∈ Metric.ball c R, ‖deriv f z‖ ≤ L) :
    ∀ ⦃z w : ℂ⦄, z ∈ Metric.closedBall c r → w ∈ Metric.closedBall c r →
      ‖f z - f w‖ ≤ L * ‖z - w‖ := by
  sorry