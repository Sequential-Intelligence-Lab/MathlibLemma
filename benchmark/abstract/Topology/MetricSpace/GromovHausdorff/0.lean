import Mathlib

/-- If the Gromov-Hausdorff distance between two compact metric spaces is `0`, then
their diameters coincide. -/
lemma GromovHausdorff.ghDist_eq_zero_diam_eq
    {X Y : Type*} [MetricSpace X] [CompactSpace X] [Nonempty X]
    [MetricSpace Y] [CompactSpace Y] [Nonempty Y]
    (h : GromovHausdorff.ghDist X Y = 0) :
    Metric.diam (Set.univ : Set X) = Metric.diam (Set.univ : Set Y) := by
  sorry