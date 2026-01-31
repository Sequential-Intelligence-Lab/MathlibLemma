import Mathlib

/-- The Gromov-Hausdorff distance between a compact metric space and a singleton
is bounded by the diameter divided by 2. -/
lemma GromovHausdorff.ghDist_le_diam_div_two_toSingleton
    (X : Type*) [MetricSpace X] [CompactSpace X] [Nonempty X] :
    GromovHausdorff.ghDist X PUnit ≤ Metric.diam (Set.univ : Set X) / 2 := by
  sorry