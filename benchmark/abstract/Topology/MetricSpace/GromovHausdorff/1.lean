import Mathlib

/-- If two compact metric spaces have Gromov-Hausdorff distance strictly less than `ε`,
then their diameters differ by at most `2 * ε`. -/
lemma GromovHausdorff.abs_diam_sub_le_of_ghDist_le
    {X Y : Type*} [MetricSpace X] [CompactSpace X] [Nonempty X]
    [MetricSpace Y] [CompactSpace Y] [Nonempty Y]
    {ε : ℝ} (hε : 0 ≤ ε)
    (h : GromovHausdorff.ghDist X Y ≤ ε) :
    |Metric.diam (Set.univ : Set X) - Metric.diam (Set.univ : Set Y)| ≤ 2 * ε := by
  sorry