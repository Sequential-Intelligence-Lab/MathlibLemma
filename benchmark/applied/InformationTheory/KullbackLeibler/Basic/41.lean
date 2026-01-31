import Mathlib

open scoped MeasureTheory

open MeasureTheory

/-- KL divergence controls difference of expectations of bounded measurable functions. -/
lemma InformationTheory.abs_integral_sub_le_sqrt_klDiv
    {α : Type*} [MeasurableSpace α]
    (μ ν : Measure α) [IsFiniteMeasure μ] [IsFiniteMeasure ν]
    (f : α → ℝ) (hf : Measurable f)
    (hb : ∀ x, |f x| ≤ 1) :
    |∫ x, f x ∂μ - ∫ x, f x ∂ν| ≤
      Real.sqrt (2 * (InformationTheory.klDiv μ ν).toReal) := by
  sorry