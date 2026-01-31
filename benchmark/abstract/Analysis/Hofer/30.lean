import Mathlib

/-- In a metric space, if every Cauchy sequence converges, then the space is complete. -/
lemma complete_of_cauchySeq_tendsto {X : Type*} [MetricSpace X]
    (h : ∀ u : ℕ → X, CauchySeq u → ∃ x, Filter.Tendsto u Filter.atTop (nhds x)) :
    CompleteSpace X := by
  sorry