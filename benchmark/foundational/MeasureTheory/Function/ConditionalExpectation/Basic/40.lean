import Mathlib

open MeasureTheory

lemma condExp_neg_ae_eq {α E 𝕜} [RCLike 𝕜]
    {m : MeasurableSpace α} {μ : Measure α}
    [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    {f g : α → E} (h : f =ᵐ[μ] g) :
    condExp m μ (-f) =ᵐ[μ] condExp m μ (-g) := by
  sorry