import Mathlib

open MeasureTheory

lemma condExp_int_sub_condExp_eq_zero
    {α : Type _} [MeasurableSpace α] (μ : Measure α)
    (f condExp : α → ℝ)
    (hf : Integrable f μ) (hcond : Integrable condExp μ) :
    ∫ x, (condExp x - f x) ∂μ = 0 := by
  sorry