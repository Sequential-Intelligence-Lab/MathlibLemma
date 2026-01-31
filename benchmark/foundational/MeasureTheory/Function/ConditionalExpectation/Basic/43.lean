import Mathlib

open MeasureTheory

lemma condExp_nonpos_of_ge {α} {m : MeasurableSpace α} {μ : Measure α}
    (f : α → ℝ) (hf : f ≤ᵐ[μ] 0) :
    μ[f|m] ≤ᵐ[μ] 0 := by
  sorry