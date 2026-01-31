import Mathlib

open scoped Metric
open Filter

/-- A sequence of compact metric spaces with diameters converging to zero has
Gromov-Hausdorff limit a singleton. -/
lemma GromovHausdorff.limit_singleton_of_diam_tendsto_zero
    {X : ℕ → Type*}
    [∀ n, MetricSpace (X n)]
    [∀ n, CompactSpace (X n)]
    [∀ n, Nonempty (X n)]
    (h : Tendsto
      (fun n => Metric.diam (Set.univ : Set (X n)))
      atTop
      (nhds (0 : ℝ))) :
    ∃ (Y : Type*),
      ∃ (_ : MetricSpace Y),
      ∃ (_ : CompactSpace Y),
      ∃ (_ : Subsingleton Y),
      ∃ (_ : Nonempty Y),
        Tendsto
          (fun n => GromovHausdorff.ghDist (X n) Y)
          atTop
          (nhds (0 : ℝ)) := by
  sorry