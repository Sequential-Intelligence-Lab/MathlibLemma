import Mathlib

/-- The Gromov-Hausdorff distance between two compact metric spaces is zero if and only
if they are isometric. -/
lemma GromovHausdorff.ghDist_zero_iff_isometric
    (X Y : Type*) [MetricSpace X] [MetricSpace Y]
    [CompactSpace X] [CompactSpace Y] [Nonempty X] [Nonempty Y] :
    GromovHausdorff.ghDist X Y = 0 ↔ Nonempty (X ≃ᵢ Y) := by
  sorry
