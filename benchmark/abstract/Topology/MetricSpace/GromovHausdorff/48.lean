import Mathlib

/-- A sequence of compact metric spaces with summable Gromov-Hausdorff distances
to a fixed space converges to that space. -/
lemma GromovHausdorff.tendsto_of_summable
    {X : ℕ → Type*} {Y : Type*}
    [∀ n, MetricSpace (X n)] [∀ n, CompactSpace (X n)] [∀ n, Nonempty (X n)]
    [MetricSpace Y] [CompactSpace Y] [Nonempty Y]
    (h : Summable (fun n => GromovHausdorff.ghDist (X n) Y)) :
    Filter.Tendsto (fun n => GromovHausdorff.ghDist (X n) Y)
      Filter.atTop (nhds (0 : ℝ)) := by
  sorry