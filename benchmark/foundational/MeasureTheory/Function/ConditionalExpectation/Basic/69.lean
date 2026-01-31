import Mathlib

open scoped ProbabilityTheory
open MeasureTheory

lemma condExp_ae_eq_condExp_of_integrable
    {α E} {m m₀ : MeasurableSpace α} (μ : Measure α)
    [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (hm : m ≤ m₀) [SigmaFinite (μ.trim hm)]
    {f g : α → E} (hf : Integrable f μ) (hfg : f =ᵐ[μ] g) :
    μ[f|m] =ᵐ[μ] μ[g|m] := by
  sorry