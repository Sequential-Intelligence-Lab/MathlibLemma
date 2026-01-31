import Mathlib

open scoped MeasureTheory

lemma condExp_eq_zero_of_ae_zero_on_subsigma {α E}
    {m m₀ : MeasurableSpace α} {μ : MeasureTheory.Measure α}
    [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    {f : α → E} (hf : f =ᵐ[μ] 0) :
    μ[f | m] =ᵐ[μ] 0 := by
  sorry