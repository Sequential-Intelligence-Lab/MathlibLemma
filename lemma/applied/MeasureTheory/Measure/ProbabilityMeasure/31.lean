import Mathlib

/-- The expectation of the absolute value of a real random variable dominates the absolute value
of its expectation. -/
lemma ProbabilityMeasure.norm_integral_le_integral_norm
    {Ω : Type*} [MeasurableSpace Ω]
    (μ : MeasureTheory.ProbabilityMeasure Ω)
    (f : Ω → ℝ)
    (hint : MeasureTheory.Integrable f (μ : MeasureTheory.Measure Ω)) :
    ‖∫ x, f x ∂(μ : MeasureTheory.Measure Ω)‖ ≤
      ∫ x, ‖f x‖ ∂(μ : MeasureTheory.Measure Ω) := by
  -- This is exactly the standard inequality for Bochner integrals.
  simpa using
    (MeasureTheory.norm_integral_le_integral_norm
      (μ := (μ : MeasureTheory.Measure Ω))
      (f := f))