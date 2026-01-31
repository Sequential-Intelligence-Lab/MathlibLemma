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
  -- Rewrite the AE equality to a lambda form convenient for `integral_congr_ae`
  have hzero' :
      f =ᵐ[(μ : Measure Ω)] (fun _ : Ω => (0 : α)) := by
    simpa using hzero
  -- Transfer the integral from `f` to the zero function, then evaluate
  calc
    ∫ x, f x ∂(μ : Measure Ω)
        = ∫ x, (0 : α) ∂(μ : Measure Ω) := by
          simpa using
            (integral_congr_ae (μ := (μ : Measure Ω)) hzero')
    _ = 0 := by
          simpa using (integral_zero (μ := (μ : Measure Ω)) (α := α))