import Mathlib

open MeasureTheory

/-- A probability measure is finite. -/
lemma ProbabilityMeasure.isFiniteMeasure
    {Ω : Type*} [MeasurableSpace Ω]
    (μ : ProbabilityMeasure Ω) :
    IsFiniteMeasure (μ : Measure Ω) := by
  sorry