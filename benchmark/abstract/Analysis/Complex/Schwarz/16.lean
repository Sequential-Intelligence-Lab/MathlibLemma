import Mathlib

/-- A version of Cauchy integral estimate specialized to norms on circles in `ℂ`. -/
lemma norm_deriv_le_cauchy_integral_bound
    {f : ℂ → ℂ} {c : ℂ} {R M : ℝ}
    (hR : 0 < R)
    (hDiff : DifferentiableOn ℂ f (Metric.closedBall c R))
    (hBound : ∀ z ∈ Metric.sphere c R, ‖f z‖ ≤ M) :
    ‖deriv f c‖ ≤ M / R := by
  sorry
