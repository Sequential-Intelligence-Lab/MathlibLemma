import Mathlib

/-- In a complete metric space, nested nonempty closed sets with diameters tending to zero
have a nonempty intersection. -/
lemma exists_mem_sInter_of_nested_closed_sets
    {X : Type*} [MetricSpace X] [CompleteSpace X]
    (F : ℕ → Set X)
    (hclosed : ∀ n, IsClosed (F n))
    (hnonempty : ∀ n, (F n).Nonempty)
    (hmono : ∀ n, F (n + 1) ⊆ F n)
    (hdiam : Filter.Tendsto (fun n => Metric.diam (F n)) Filter.atTop (nhds (0 : ℝ))) :
    (Set.sInter (Set.range F)).Nonempty := by
  sorry