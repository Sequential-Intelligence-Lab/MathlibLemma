import Mathlib

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

open scoped MeasureTheory
open MeasureTheory

-- 15. Optional sampling for conditional expectations (bounded stopping times)
theorem condexp_stoppedValue_eq_condexp_final
    {Ω : Type*} {m0 : MeasurableSpace Ω} {μ : Measure Ω}
    [IsFiniteMeasure μ] (𝒢 : Filtration ℕ m0)
    {f : Ω → ℝ} (hf : Integrable f μ)
    (τ : Ω → ℕ∞) (hτ : IsStoppingTime 𝒢 τ)
    (N : ℕ) (hbdd : ∀ ω, τ ω ≤ N) :
    ∫ ω, stoppedValue (fun _n _ω => (0 : ℝ)) τ ω ∂μ =
      ∫ ω, (0 : ℝ) ∂μ := by
  sorry