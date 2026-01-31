import Mathlib

open MeasureTheory

lemma RCLike.im_integral_eq_integral_im
    {K : Type*} [RCLike K]
    {α : Type*} [MeasurableSpace α] (μ : Measure α)
    {f : α → K} (hf : Integrable f μ) :
    RCLike.im (∫ x, f x ∂μ) = ∫ x, RCLike.im (f x) ∂μ := by
  sorry