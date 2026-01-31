import Mathlib

/-- If a complex differentiable map on a ball sends radial segments to radial segments and preserves
the center, then it is radial, i.e., `f z = g (‖z‖) * z` for some scalar-valued function `g`. -/
lemma eqOn_radial_of_maps_radial_segments
    {f : ℂ → ℂ} {c : ℂ} {R : ℝ}
    (hR : 0 < R)
    (hDiff : DifferentiableOn ℂ f (Metric.ball c R))
    (hfix : f c = c)
    (hRadial : ∀ θ : ℝ, ∀ r ∈ Set.Icc (0 : ℝ) R,
      ∃ s : ℝ, f (c + r * Complex.exp (θ * Complex.I)) =
        c + s * Complex.exp (θ * Complex.I)) :
    ∃ g : ℝ → ℝ, ∀ z ∈ Metric.ball c R,
      f z = c + g (‖z - c‖) * (z - c) := by
  sorry