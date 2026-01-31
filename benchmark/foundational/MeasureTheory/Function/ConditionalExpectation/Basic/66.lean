import Mathlib

open MeasureTheory

lemma condExp_invariance_under_neg
    {α} {m m₀ : MeasurableSpace α} {μ : MeasureTheory.Measure α}
    (f : α → ℝ) :
    μ[fun x ↦ -f x | m] =ᵐ[μ] - μ[fun x ↦ f x | m] := by
  sorry