import Mathlib

/-- If a sequence in a metric space has all of its cluster points contained in a closed set `s`,
and the sequence converges, then the limit lies in `s`. -/
lemma mem_of_tendsto_of_clusterPts_subset
    {X : Type*} [MetricSpace X]
    (u : ℕ → X) (x : X) (s : Set X)
    (hlim : Filter.Tendsto u Filter.atTop (nhds x))
    (hclosed : IsClosed s)
    (hcl : closure (Set.range u) ⊆ s) :
    x ∈ s := by
  sorry