import Mathlib

open MeasureTheory

variable {α : Type*}

lemma condExp_nonneg_integral_le_integral
    {m m₀ : MeasurableSpace α} {μ : Measure α}
    (f : α → ℝ) (hf : 0 ≤ᵐ[μ] f) :
    ∫ x, μ[f|m] x ∂μ ≤ ∫ x, f x ∂μ := by
  sorry