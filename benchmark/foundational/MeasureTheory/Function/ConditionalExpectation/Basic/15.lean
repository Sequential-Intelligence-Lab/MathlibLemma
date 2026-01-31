import Mathlib

open scoped MeasureTheory

open MeasureTheory

lemma condExp_ae_eq_condExp_of_le
    {α E} [MeasurableSpace α]
    {m₁ m₂ m₀ : MeasurableSpace α} (μ : Measure α)
    [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (hm₁₂ : m₁ ≤ m₂) (hm₂₀ : m₂ ≤ m₀)
    [SigmaFinite (μ.trim hm₂₀)]
    (f : α → E) :
    μ[μ[f | m₂] | m₁] =ᵐ[μ] μ[f | m₁] := by
  sorry