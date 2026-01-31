import Mathlib

open MeasureTheory
open scoped MeasureTheory

lemma condExp_abs_le_condExp_norm {α E}
    {m : MeasurableSpace α} {μ : Measure α}
    [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    [SigmaFinite μ] (f : α → E) :
    (fun x ↦ ‖μ[f|m] x‖) ≤ᵐ[μ] μ[fun x ↦ ‖f x‖|m] := by
  sorry