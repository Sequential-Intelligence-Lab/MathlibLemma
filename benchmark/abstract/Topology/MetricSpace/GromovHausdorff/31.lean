import Mathlib

/-- If two compact metric spaces embed isometrically into a common compact metric space `Z`,
then their Gromov-Hausdorff distance is bounded by the Hausdorff distance of the images. -/
lemma GromovHausdorff.ghDist_le_hausdorffDist_in_compact
    {X Y Z : Type*} [MetricSpace X] [MetricSpace Y] [MetricSpace Z]
    [CompactSpace X] [CompactSpace Y] [CompactSpace Z]
    [Nonempty X] [Nonempty Y]
    (Φ : X → Z) (Ψ : Y → Z)
    (hΦ : Isometry Φ) (hΨ : Isometry Ψ) :
    GromovHausdorff.ghDist X Y ≤
      Metric.hausdorffDist (Set.range Φ) (Set.range Ψ) := by
  sorry