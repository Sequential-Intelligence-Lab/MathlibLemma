import Mathlib

/-- If a sequence in a metric space has a unique cluster point, then it converges. -/
lemma tendsto_of_uniqueClusterPt {X : Type*} [MetricSpace X]
    (u : ℕ → X) (x : X)
    (h : {y | y ∈ closure (Set.range u)} = {x}) :
    Filter.Tendsto u Filter.atTop (nhds x) := by
  sorry