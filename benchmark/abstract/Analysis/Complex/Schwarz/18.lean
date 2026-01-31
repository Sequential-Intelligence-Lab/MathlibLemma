import Mathlib

/-- If a holomorphic self-map of the unit disk has two distinct fixed points in the disk, then it
is the identity. -/
lemma eqOn_id_of_two_fixed_points_in_unitDisk
    {f : ℂ → ℂ}
    (hDiff : DifferentiableOn ℂ f (Metric.ball 0 1))
    (h_maps : Set.MapsTo f (Metric.ball 0 1) (Metric.ball 0 1))
    {z₁ z₂ : ℂ} (hz₁ : z₁ ∈ Metric.ball 0 1) (hz₂ : z₂ ∈ Metric.ball 0 1) (hne : z₁ ≠ z₂)
    (hfix₁ : f z₁ = z₁) (hfix₂ : f z₂ = z₂) :
    Set.EqOn f id (Metric.ball 0 1) := by
  sorry
