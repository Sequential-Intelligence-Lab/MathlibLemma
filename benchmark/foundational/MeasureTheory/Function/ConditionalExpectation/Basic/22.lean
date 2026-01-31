import Mathlib

open MeasureTheory

lemma condExp_norm_le_ae_norm
    {α E} {m m₀ : MeasurableSpace α} {μ : Measure α}
    [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (f : α → E) :
    (fun x ↦ ‖μ[f|m] x‖) ≤ᵐ[μ] μ[fun x ↦ ‖f x‖|m] := by
  sorry