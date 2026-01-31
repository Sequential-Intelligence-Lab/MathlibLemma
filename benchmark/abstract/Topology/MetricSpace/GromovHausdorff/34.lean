import Mathlib

open Filter Metric

/-- If a sequence of compact metric spaces converges in Gromov-Hausdorff distance,
then the sequence of their diameters converges. -/
lemma GromovHausdorff.tendsto_diam_of_tendsto_ghDist
    {X : ℕ → Type*} {Y : Type*}
    [∀ n, MetricSpace (X n)] [∀ n, CompactSpace (X n)] [∀ n, Nonempty (X n)]
    [MetricSpace Y] [CompactSpace Y] [Nonempty Y]
    (h : Tendsto (fun n => GromovHausdorff.ghDist (X n) Y) atTop (nhds (0 : ℝ))) :
    Tendsto (fun n => diam (Set.univ : Set (X n)))
      atTop (nhds (diam (Set.univ : Set Y))) := by
  sorry