import Mathlib

lemma RCLike.re_integral_eq_integral_re {K : Type*} [RCLike K]
    {α : Type*} [MeasurableSpace α] {μ : MeasureTheory.Measure α}
    {f : α → K} (hf : MeasureTheory.Integrable f μ) :
    RCLike.re (∫ x, f x ∂μ) = ∫ x, RCLike.re (f x) ∂μ := by
  sorry