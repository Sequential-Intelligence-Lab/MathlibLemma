import Mathlib

open scoped BoundedContinuousFunction
open MeasureTheory

/-- A continuous bounded function is integrable against any probability measure. -/
lemma ProbabilityMeasure.integrable_boundedContinuousFunction
    {Ω : Type*} [TopologicalSpace Ω] [MeasurableSpace Ω] [OpensMeasurableSpace Ω]
    (μ : MeasureTheory.ProbabilityMeasure Ω)
    (f : Ω →ᵇ ℝ) :
    MeasureTheory.Integrable f μ.toMeasure := by
  sorry