import Mathlib

open scoped Topology

/-- If a holomorphic self-map of the unit disk has a boundary fixed point with nonzero angular
derivative greater than one, then the map is not distance nonincreasing near that point. -/
lemma not_nonexpanding_near_boundary_fixed_point
    (f : ℂ → ℂ) (ζ : ℂ)
    (hζ : ζ ∈ Metric.sphere 0 1)
    (hDiff : DifferentiableAt ℂ f ζ)
    (h_maps : Set.MapsTo f (Metric.closedBall 0 1) (Metric.closedBall 0 1))
    (hfix : f ζ = ζ)
    (hanger : 1 < ‖deriv f ζ‖) :
    ∀ᶠ z in 𝓝 ζ, dist (f z) ζ > dist z ζ := by
  sorry