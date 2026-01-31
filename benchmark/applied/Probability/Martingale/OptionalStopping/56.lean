import Mathlib

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

open scoped MeasureTheory
open MeasureTheory

/-- 59. Expected `stoppedValue` is monotone in `τ` for a submartingale if `τ ≤ π` almost surely,
under a uniform almost sure bound of `τ` and `π`. -/
theorem Submartingale.expected_stoppedValue_mono_of_ae_le'
    {Ω : Type*} {m0 : MeasurableSpace Ω} (μ : Measure Ω)
    {𝒢 : Filtration ℕ m0}
    [SigmaFiniteFiltration μ 𝒢]
    {f : ℕ → Ω → ℝ}
    (hf : Submartingale f 𝒢 μ)
    {τ π : Ω → ℕ∞} (hτ : IsStoppingTime 𝒢 τ) (hπ : IsStoppingTime 𝒢 π)
    (hle_ae : ∀ᵐ ω ∂μ, τ ω ≤ π ω)
    {N : ℕ} (hbdd : ∀ ω, max (τ ω) (π ω) ≤ N) :
    (∫ ω, stoppedValue f τ ω ∂μ) ≤ (∫ ω, stoppedValue f π ω ∂μ) := by
  sorry