import Mathlib

open scoped MeasureTheory

lemma condExp_indicator_nonneg {α}
    {m m₀ : MeasurableSpace α} {μ : MeasureTheory.Measure α}
    (s : Set α) (f : α → ℝ)
    (hf : 0 ≤ᵐ[μ] f) :
    0 ≤ᵐ[μ] μ[s.indicator f | m] := by
  sorry