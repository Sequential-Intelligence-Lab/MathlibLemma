import Mathlib

/-- If a holomorphic self-map of the unit disk fixes three boundary points, then it is the identity. -/
lemma eqOn_id_of_three_boundary_fixed_points
    {f : ℂ → ℂ}
    (hDiff : DifferentiableOn ℂ f (Metric.closedBall 0 1))
    (h_maps : Set.MapsTo f (Metric.closedBall 0 1) (Metric.closedBall 0 1))
    {z₁ z₂ z₃ : ℂ}
    (hz₁ : z₁ ∈ Metric.sphere 0 1)
    (hz₂ : z₂ ∈ Metric.sphere 0 1)
    (hz₃ : z₃ ∈ Metric.sphere 0 1)
    (hdistinct : z₁ ≠ z₂ ∧ z₂ ≠ z₃ ∧ z₁ ≠ z₃)
    (hfix₁ : f z₁ = z₁) (hfix₂ : f z₂ = z₂) (hfix₃ : f z₃ = z₃) :
    Set.EqOn f id (Metric.closedBall 0 1) := by
  sorry
