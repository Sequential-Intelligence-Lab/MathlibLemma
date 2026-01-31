import Mathlib

open MeasureTheory

/-- If a random variable is almost surely zero under a probability measure, then its integral is
zero. -/
lemma ProbabilityMeasure.integral_eq_zero_of_ae_eq_zero
    {Ω : Type*} [MeasurableSpace Ω]
    {α : Type*} [NormedAddCommGroup α] [NormedSpace ℝ α] [CompleteSpace α]
    (μ : ProbabilityMeasure Ω)
    {f : Ω → α}
    (hf : Integrable f (μ : Measure Ω))
    (hzero : f =ᵐ[(μ : Measure Ω)] 0) :
    ∫ x, f x ∂(μ : Measure Ω) = 0 := by
  sorry