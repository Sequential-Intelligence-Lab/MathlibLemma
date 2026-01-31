import Mathlib

open scoped MeasureTheory
open MeasureTheory

lemma condExp_condExp_eq_condExp_sup {α E 𝕜} [RCLike 𝕜]
    {m₁ m₂ : MeasurableSpace α} {μ : Measure α}
    [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    [SigmaFinite μ]
    (f : α → E) :
    μ[μ[f | m₁] | m₁ ⊔ m₂] =ᵐ[μ] μ[f | m₁] := by
  sorry