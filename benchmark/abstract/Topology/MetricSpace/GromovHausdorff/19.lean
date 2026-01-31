import Mathlib

/-- If the diameter of a compact metric space is at most `ε`, then its Gromov-Hausdorff
distance to a singleton is at most `ε / 2`. -/
lemma GromovHausdorff.ghDist_singleton_le_of_diam_le
    (X : Type*) [MetricSpace X] [CompactSpace X] [Nonempty X] {ε : ℝ}
    (h : Metric.diam (Set.univ : Set X) ≤ ε) :
    GromovHausdorff.ghDist X PUnit ≤ ε / 2 := by
  sorry