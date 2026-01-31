import Mathlib

open MeasureTheory

lemma condExp_norm_le_norm
    {α E} {m : MeasurableSpace α} {μ : Measure α}
    [SigmaFinite μ]
    [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (f : α → E) :
    (∀ᵐ x ∂μ, ‖μ[f | m] x‖ ≤ μ[fun y ↦ ‖f y‖ | m] x) := by
  sorry