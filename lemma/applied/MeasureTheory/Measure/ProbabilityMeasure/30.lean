import Mathlib

/-- The expectation of a nonnegative function is nonnegative. -/
lemma ProbabilityMeasure.integral_nonneg
    {Ω : Type*} [MeasurableSpace Ω]
    (μ : MeasureTheory.ProbabilityMeasure Ω)
    {f : Ω → ℝ} (hf : 0 ≤ f)
    (hint : MeasureTheory.Integrable f (μ : MeasureTheory.Measure Ω)) :
    0 ≤ ∫ x, f x ∂(μ : MeasureTheory.Measure Ω) := by
  -- We can use the general lemma `MeasureTheory.integral_nonneg`
  -- about nonnegativity of the integral of a nonnegative function.
  simpa using
    (MeasureTheory.integral_nonneg (μ := (μ : MeasureTheory.Measure Ω)) hf)