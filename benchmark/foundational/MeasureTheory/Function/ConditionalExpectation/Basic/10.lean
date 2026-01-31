import Mathlib

open scoped MeasureTheory

open MeasureTheory

lemma condExp_const_smul
    {α E 𝕜} [RCLike 𝕜]
    {m m₀ : MeasurableSpace α} (μ : Measure α)
    [SigmaFinite μ]
    [NormedAddCommGroup E] [NormedSpace 𝕜 E] [NormedSpace ℝ E] [CompleteSpace E]
    (f : α → E) (c : 𝕜) :
    μ[fun x ↦ c • f x | m] =ᵐ[μ] c • μ[fun x ↦ f x | m] := by
  sorry