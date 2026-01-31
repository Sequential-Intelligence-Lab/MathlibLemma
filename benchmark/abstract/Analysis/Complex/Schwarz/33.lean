import Mathlib

/-- If a holomorphic function on a disk has a removable singularity at the center and maps the
punctured disk into a bounded set, then its derivative at the center is bounded by the same bound
divided by the radius. -/
lemma norm_deriv_le_div_of_puncturedDisk_bound
    {f : ℂ → ℂ} {c : ℂ} {R M : ℝ}
    (hR : 0 < R)
    (hDiff : DifferentiableOn ℂ f (Metric.ball c R \ {c}))
    (hBound : ∀ z ∈ Metric.ball c R \ {c}, ‖f z‖ ≤ M)
    (hext : ∃ g : ℂ → ℂ, DifferentiableOn ℂ g (Metric.ball c R) ∧
      (∀ z ∈ Metric.ball c R \ {c}, g z = f z)) :
    ‖deriv f c‖ ≤ M / R := by
  sorry
