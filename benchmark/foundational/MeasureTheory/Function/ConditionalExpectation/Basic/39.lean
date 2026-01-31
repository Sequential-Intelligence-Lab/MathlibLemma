import Mathlib

open MeasureTheory

noncomputable def condExp {α E} (m : MeasurableSpace α) (μ : Measure α)
    (f : α → E) : α → E :=
  f

lemma condExp_smul_ae_eq {α E 𝕜} [RCLike 𝕜]
    {m m₀ : MeasurableSpace α} {μ : Measure α}
    [NormedAddCommGroup E] [CompleteSpace E] [NormedSpace ℝ E]
    {f g : α → E} (c : ℝ) (h : f =ᵐ[μ] g) :
    condExp m μ (fun x => c • f x) =ᵐ[μ] condExp m μ (fun x => c • g x) := by
  sorry