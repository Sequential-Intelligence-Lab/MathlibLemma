import Mathlib

/-- Gromov-Hausdorff distance satisfies the triangle inequality on compact metric spaces. -/
lemma GromovHausdorff.ghDist_triangle
    (X : Type*) [MetricSpace X] [CompactSpace X] [Nonempty X]
    (Y : Type*) [MetricSpace Y] [CompactSpace Y] [Nonempty Y]
    (Z : Type*) [MetricSpace Z] [CompactSpace Z] [Nonempty Z] :
    GromovHausdorff.ghDist X Z ≤
      GromovHausdorff.ghDist X Y + GromovHausdorff.ghDist Y Z := by
  sorry
