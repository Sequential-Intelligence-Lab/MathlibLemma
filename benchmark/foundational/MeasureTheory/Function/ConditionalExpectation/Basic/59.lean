import Mathlib

open MeasureTheory

lemma condExp_abs_le_essSup_of_nonempty {α}
    {m m₀ : MeasurableSpace α} {μ : Measure α}
    [NeZero μ] [SigmaFinite μ]
    (f : α → ℝ) :
    ∀ᵐ x ∂μ, |μ[f | m] x| ≤ essSup (fun x ↦ |f x|) μ := by
  sorry