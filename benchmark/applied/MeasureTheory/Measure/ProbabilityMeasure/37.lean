import Mathlib

/-- If `μ` is a probability measure, the normalization of its associated finite measure is `μ`
itself. -/
lemma ProbabilityMeasure.toFiniteMeasure_normalize_eq
    {Ω : Type*} [MeasurableSpace Ω] [Ne : Nonempty Ω]
    (μ : MeasureTheory.ProbabilityMeasure Ω) :
    μ.toFiniteMeasure.normalize = μ := by
  sorry