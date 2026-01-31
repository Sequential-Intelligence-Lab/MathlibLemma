import Mathlib

open MeasureTheory

lemma condExp_norm_le_condExp_abs {α}
    {m m₀ : MeasurableSpace α} {μ : Measure α}
    (f : α → ℝ) :
    (fun x ↦ ‖μ[f|m] x‖) ≤ᵐ[μ] fun x ↦ μ[fun y ↦ ‖f y‖ | m] x := by
  sorry