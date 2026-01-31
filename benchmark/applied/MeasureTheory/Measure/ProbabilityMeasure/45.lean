import Mathlib

open MeasureTheory

/-- The expectation of a bounded continuous complex-valued function is continuous in the measure. -/
lemma ProbabilityMeasure.continuous_integral_boundedContinuousFunction_complex
    {Ω : Type*} [TopologicalSpace Ω] [MeasurableSpace Ω] [OpensMeasurableSpace Ω]
    (f : BoundedContinuousFunction Ω ℂ) :
    Continuous (fun μ : ProbabilityMeasure Ω =>
      ∫ x, f x ∂(μ : Measure Ω)) := by
  sorry