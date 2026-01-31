import Mathlib

/-- Gromov-Hausdorff distance between isometric images in a common ambient space is bounded
by their Hausdorff distance. -/
lemma GromovHausdorff.ghDist_le_hausdorffDist_of_isometry_inclusion
    {X Y Z : Type*} [MetricSpace X] [Nonempty X] [CompactSpace X]
    [MetricSpace Y] [Nonempty Y] [CompactSpace Y]
    [MetricSpace Z]
    (Φ : X → Z) (Ψ : Y → Z)
    (hΦ : Isometry Φ) (hΨ : Isometry Ψ) :
    GromovHausdorff.ghDist X Y ≤
      Metric.hausdorffDist (Set.range Φ) (Set.range Ψ) := by
  sorry