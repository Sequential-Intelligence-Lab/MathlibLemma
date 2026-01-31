import Mathlib

open MeasureTheory

lemma condExp_inf_eq_ae {α E}
    {m₁ m₂ : MeasurableSpace α} {μ : Measure α}
    [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (f : α → E) :
    μ[f | m₁ ⊓ m₂] =ᵐ[μ] μ[f | m₂ ⊓ m₁] := by
  sorry