import Mathlib

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

open scoped MeasureTheory
open MeasureTheory

/-- 39. Optional stopping for squared-integrable martingale in L².

This is only a *statement stub* intended for future use; it is not proved here. -/
theorem Martingale.L2_optional_stopping
    {Ω : Type*} {m0 : MeasurableSpace Ω} (μ : Measure Ω)
    [IsFiniteMeasure μ]
    {𝒢 : Filtration ℕ m0} {f : ℕ → Ω → ℝ}
    (hM : Martingale f 𝒢 μ)
    (hL2 : ∀ n, Integrable (fun ω => (f n ω)^2) μ)
    {τ : Ω → ℕ∞} (hτ : IsStoppingTime 𝒢 τ)
    {N : ℕ} (hbdd : ∀ ω, τ ω ≤ N) :
    ∫ ω, (stoppedValue f τ ω)^2 ∂μ ≤ ∫ ω, (f N ω)^2 ∂μ := by
  sorry