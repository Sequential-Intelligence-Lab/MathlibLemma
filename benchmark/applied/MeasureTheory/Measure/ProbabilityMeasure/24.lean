import Mathlib

/-- The expectation of a bounded continuous function is uniformly bounded over all probability
measures. -/
lemma ProbabilityMeasure.integral_boundedContinuousFunction_le_norm
    {Ω : Type*} [TopologicalSpace Ω] [MeasurableSpace Ω] [OpensMeasurableSpace Ω]
    (μ : MeasureTheory.ProbabilityMeasure Ω)
    (f : BoundedContinuousFunction Ω ℝ) :
    ‖∫ x, f x ∂(μ.toMeasure)‖ ≤ ‖f‖ := by
  sorry