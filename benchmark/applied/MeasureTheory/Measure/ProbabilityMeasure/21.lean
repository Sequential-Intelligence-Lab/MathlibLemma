import Mathlib

/-- A probability measure on a compact type is tight. -/
lemma ProbabilityMeasure.tight_of_compact
    {Ω : Type*} [TopologicalSpace Ω] [CompactSpace Ω]
    [MeasurableSpace Ω] [OpensMeasurableSpace Ω]
    (μ : MeasureTheory.ProbabilityMeasure Ω) :
    ∀ ε : ENNReal, 0 < ε → ∃ K : Set Ω, IsCompact K ∧
      (μ : MeasureTheory.Measure Ω) Kᶜ ≤ ε := by
  sorry