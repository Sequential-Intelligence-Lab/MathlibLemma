import Mathlib

open MeasureTheory

lemma condExp_sub_ae_eq {α} {m : MeasurableSpace α} {μ : Measure α}
    {f₁ f₂ g₁ g₂ : α → ℝ}
    (h₁ : f₁ =ᵐ[μ] g₁) (h₂ : f₂ =ᵐ[μ] g₂) :
    μ[f₁ - f₂ | m] =ᵐ[μ] μ[g₁ - g₂ | m] := by
  sorry