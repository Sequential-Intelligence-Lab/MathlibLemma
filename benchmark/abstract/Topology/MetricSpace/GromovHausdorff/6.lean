import Mathlib

open scoped Topology
open Filter Metric

/-- Continuity of diameter with respect to Gromov-Hausdorff convergence of compact spaces. -/
lemma GromovHausdorff.diam_tendsto_of_ghDist_tendsto
    {X : ℕ → Type*} {Y : Type*}
    [∀ n, MetricSpace (X n)] [∀ n, CompactSpace (X n)] [∀ n, Nonempty (X n)]
    [MetricSpace Y] [CompactSpace Y] [Nonempty Y]
    (u : ℕ → GromovHausdorff.GHSpace)
    (hX : ∀ n, u n = GromovHausdorff.toGHSpace (X n))
    (hY :
      Tendsto u atTop (nhds (GromovHausdorff.toGHSpace Y)))
    (h_conv :
      Tendsto (fun n => GromovHausdorff.ghDist (X n) Y) atTop (nhds (0 : ℝ))) :
    Tendsto (fun n => diam (Set.univ : Set (X n))) atTop
      (nhds (diam (Set.univ : Set Y))) := by
  sorry