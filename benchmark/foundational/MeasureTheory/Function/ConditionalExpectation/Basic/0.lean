import Mathlib

open scoped MeasureTheory

lemma condExp_ae_eq_of_sub_ae_eq_zero
    {α E} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    {m m₀ : MeasurableSpace α} (μ : MeasureTheory.Measure α)
    {f g : α → E} (hm : m ≤ m₀)
    (hfg : μ[(f - g) | m] =ᵐ[μ] 0) :
    μ[f | m] =ᵐ[μ] μ[g | m] := by
  sorry