import Mathlib

open scoped MeasureTheory

variable {α E 𝕜 : Type _}

lemma condExp_add_ae_eq
    [MeasurableSpace α] (m m₀ : MeasurableSpace α) (μ : MeasureTheory.Measure α)
    [Add E]
    (condExp : (α → E) → (α → E))
    {f₁ f₂ g₁ g₂ : α → E}
    (h₁ : f₁ =ᵐ[μ] g₁)
    (h₂ : f₂ =ᵐ[μ] g₂) :
    condExp (fun x => f₁ x + f₂ x)
      =ᵐ[μ] condExp (fun x => g₁ x + g₂ x) := by
  sorry