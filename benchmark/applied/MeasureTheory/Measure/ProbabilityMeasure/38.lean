import Mathlib

/-- The `map` of a probability measure under the identity is itself. -/
lemma ProbabilityMeasure.map_id
    {Ω : Type*} [MeasurableSpace Ω]
    (μ : MeasureTheory.ProbabilityMeasure Ω) :
    μ.map (aemeasurable_id) = μ := by
  sorry
