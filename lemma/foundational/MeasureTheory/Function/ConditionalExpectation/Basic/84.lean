import Mathlib

open MeasureTheory

lemma condExp_int_sub_condExp_eq_zero
    {α : Type _} [MeasurableSpace α] (μ : Measure α)
    (f condExp : α → ℝ)
    (hf : Integrable f μ) (hcond : Integrable condExp μ)
    (h_eq_int : ∫ x, condExp x ∂μ = ∫ x, f x ∂μ) :
    ∫ x, (condExp x - f x) ∂μ = 0 := by
  -- Use linearity of the integral on the difference
  -- ∫ (condExp - f) = ∫ condExp - ∫ f
  have h_sub :
      ∫ x, (condExp x - f x) ∂μ
        = ∫ x, condExp x ∂μ - ∫ x, f x ∂μ :=
    integral_sub hcond hf
  -- Now use the hypothesis that the two integrals coincide
  have : ∫ x, condExp x ∂μ - ∫ x, f x ∂μ = 0 := by
    simpa [h_eq_int]
  -- Combine both equalities
  simpa [h_sub, this]