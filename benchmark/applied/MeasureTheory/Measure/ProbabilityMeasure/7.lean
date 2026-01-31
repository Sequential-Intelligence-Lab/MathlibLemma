import Mathlib

open MeasureTheory

/-- A probability measure on a measurable space is σ-finite. -/
instance ProbabilityMeasure.instSigmaFinite
    {Ω : Type*} [MeasurableSpace Ω]
    (μ : ProbabilityMeasure Ω) :
    SigmaFinite (μ : Measure Ω) := by
  sorry