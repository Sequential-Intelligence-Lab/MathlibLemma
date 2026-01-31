import Mathlib

/-- The `map` of a probability measure under the identity is itself. -/
lemma ProbabilityMeasure.map_id
    {Ω : Type*} [MeasurableSpace Ω]
    (μ : MeasureTheory.ProbabilityMeasure Ω) :
    μ.map (aemeasurable_id) = μ := by
  -- Extensionality on measurable sets
  ext s hs
  -- Reduce to the underlying measure and use `Measure.map_id`
  change (MeasureTheory.Measure.map id (μ : MeasureTheory.Measure Ω)) s
      = (μ : MeasureTheory.Measure Ω) s
  simpa using MeasureTheory.Measure.map_id (μ : MeasureTheory.Measure Ω)