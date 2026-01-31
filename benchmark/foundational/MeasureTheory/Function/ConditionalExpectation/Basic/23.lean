import Mathlib

open MeasureTheory

lemma condExp_real_nonneg_of_nonneg {α}
    {m m₀ : MeasurableSpace α} {μ : Measure α}
    (f : α → ℝ)
    (hf : 0 ≤ᵐ[μ] f) :
    0 ≤ᵐ[μ] μ[f | m] := by
  sorry