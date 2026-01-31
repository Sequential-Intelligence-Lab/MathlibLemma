import Mathlib

open MeasureTheory

lemma condExp_abs_le_essSup {α} {m : MeasurableSpace α} {μ : Measure α}
    (f : α → ℝ) :
    ∀ᵐ x ∂μ, |μ[f|m] x| ≤ essSup (fun x ↦ |f x|) μ := by
  sorry