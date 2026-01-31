import Mathlib

open MeasureTheory

lemma condExp_snd_sigmaAlgebra {α β E 𝕜} [RCLike 𝕜]
    {mα : MeasurableSpace α} {mβ : MeasurableSpace β}
    [MeasureSpace (α × β)]
    {μ : Measure (α × β)}
    [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (f : α × β → E) :
    μ[f | MeasurableSpace.comap Prod.snd mβ] =ᵐ[μ] μ[f | mβ.comap Prod.snd] := by
  sorry