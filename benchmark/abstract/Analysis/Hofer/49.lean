import Mathlib

/-- A Cauchy sequence in a compact metric space converges. -/
lemma CauchySeq.tendsto_of_compact {X : Type*} [MetricSpace X] [CompactSpace X]
    {u : ℕ → X} (h : CauchySeq u) :
    ∃ x, Filter.Tendsto u Filter.atTop (nhds x) := by
  sorry