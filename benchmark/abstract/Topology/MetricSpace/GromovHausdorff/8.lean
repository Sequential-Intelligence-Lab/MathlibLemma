import Mathlib

/-- The Gromov-Hausdorff distance is bounded above by the sum of the infimum Hausdorff distances
of optimal couplings through a third space. -/
lemma GromovHausdorff.ghDist_le_inf_hausdorffDist_through
    {X Y Z : Type*} [MetricSpace X] [CompactSpace X] [Nonempty X]
    [MetricSpace Y] [CompactSpace Y] [Nonempty Y]
    [MetricSpace Z] [CompactSpace Z] [Nonempty Z] :
    GromovHausdorff.ghDist X Z ≤
      GromovHausdorff.ghDist X Y + GromovHausdorff.ghDist Y Z := by
  sorry
