import Mathlib

/-- A probability measure on a compact type is tight. -/
lemma ProbabilityMeasure.tight_of_compact
    {Ω : Type*} [TopologicalSpace Ω] [CompactSpace Ω]
    [MeasurableSpace Ω] [OpensMeasurableSpace Ω]
    (μ : MeasureTheory.ProbabilityMeasure Ω) :
    ∀ ε : ENNReal, 0 < ε → ∃ K : Set Ω, IsCompact K ∧
      (μ : MeasureTheory.Measure Ω) Kᶜ ≤ ε := by
  intro ε hε
  refine ⟨Set.univ, isCompact_univ, ?_⟩
  -- Measure of complement of `univ` is the measure of `∅`, which is `0`
  have hμ_univc :
      (μ : MeasureTheory.Measure Ω) (Set.univᶜ : Set Ω) = 0 := by
    simpa [Set.compl_univ] using
      (measure_empty : (μ : MeasureTheory.Measure Ω) (∅ : Set Ω) = 0)
  -- From `0 < ε` we get `0 ≤ ε`
  have h0le : (0 : ENNReal) ≤ ε := le_of_lt hε
  -- Conclude the desired inequality
  simpa [hμ_univc] using h0le