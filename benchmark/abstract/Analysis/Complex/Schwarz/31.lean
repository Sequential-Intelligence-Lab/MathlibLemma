import Mathlib

/-- If a holomorphic function on the unit disk has nonnegative real part, then it satisfies a
growth bound proportional to `(1 + |z|)/(1 - |z|)`. -/
lemma norm_le_poisson_bound_of_nonneg_re_on_unitDisk
    {f : ℂ → ℂ}
    (hDiff : DifferentiableOn ℂ f (Metric.ball 0 1))
    (hRe : ∀ z ∈ Metric.ball 0 1, 0 ≤ (f z).re) :
    ∃ C : ℝ, ∀ z ∈ Metric.ball 0 1,
      ‖f z‖ ≤ C * (1 + ‖z‖) / (1 - ‖z‖) := by
  sorry
