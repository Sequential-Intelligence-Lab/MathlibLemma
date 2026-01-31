import Mathlib

/-- In a complete metric space, every bounded decreasing sequence of nonempty closed sets
with diameters tending to zero has a unique point in the intersection. -/
lemma exists_unique_of_nested_closed_sets
    {X : Type*} [MetricSpace X] [CompleteSpace X]
    (F : ℕ → Set X)
    (hclosed : ∀ n, IsClosed (F n))
    (hnonempty : ∀ n, (F n).Nonempty)
    (hmono : ∀ n, F (n + 1) ⊆ F n)
    (hbounded : ∃ x R, ∀ n y, y ∈ F n → dist y x ≤ R)
    (hdiam : Filter.Tendsto (fun n => Metric.diam (F n))
               Filter.atTop (nhds (0 : ℝ))) :
    ∃! x : X, x ∈ Set.sInter (Set.range F) := by
  sorry