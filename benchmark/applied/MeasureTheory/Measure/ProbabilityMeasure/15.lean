import Mathlib

/-- The expectation of a constant random variable under a probability measure. -/
lemma ProbabilityMeasure.integral_const
    {Ω : Type*} [MeasurableSpace Ω]
    {α : Type*} [NormedAddCommGroup α] [NormedSpace ℝ α]
    (μ : MeasureTheory.ProbabilityMeasure Ω)
    (c : α) :
    ∫ x, c ∂(μ : MeasureTheory.Measure Ω) = c := by
  sorry