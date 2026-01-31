import Mathlib

open MeasureTheory

lemma condExp_integrable_ae_eq {α E 𝕜} [RCLike 𝕜]
    {m m₀ : MeasurableSpace α} {μ : Measure α}
    [SigmaFinite μ]
    [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    {f g : α → E} (hf : Integrable f μ) (hg : Integrable g μ)
    (hfg : μ[f | m] =ᵐ[μ] μ[g | m]) :
    ∫ x, f x ∂μ = ∫ x, g x ∂μ := by
  sorry