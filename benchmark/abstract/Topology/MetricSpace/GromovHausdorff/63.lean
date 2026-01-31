import Mathlib

/-- Stability of Gromov-Hausdorff convergence under taking products with a fixed compact
metric space. -/
lemma GromovHausdorff.tendsto_prod
    {X : ℕ → Type*} {Y : Type*}
    [∀ n, MetricSpace (X n)] [∀ n, CompactSpace (X n)] [∀ n, Nonempty (X n)]
    [MetricSpace Y] [CompactSpace Y] [Nonempty Y]
    (Z : Type*) [MetricSpace Z] [CompactSpace Z] [Nonempty Z]
    (h : Filter.Tendsto (fun n => GromovHausdorff.ghDist (X n) Y)
        Filter.atTop (nhds (0 : ℝ))) :
    Filter.Tendsto (fun n =>
      GromovHausdorff.ghDist (X n × Z) (Y × Z))
      Filter.atTop (nhds (0 : ℝ)) := by
  sorry