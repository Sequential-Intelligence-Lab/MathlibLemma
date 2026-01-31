import Mathlib

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

open MeasureTheory

namespace Supermartingale

-- 1. Optional stopping for supermartingales (forward direction)
theorem expected_stoppedValue_anti
    {Ω : Type*} {m0 : MeasurableSpace Ω} {μ : Measure Ω}
    {𝒢 : Filtration ℕ m0} {f : ℕ → Ω → ℝ}
    [SigmaFiniteFiltration μ 𝒢] [IsFiniteMeasure μ]
    (hf : Supermartingale f 𝒢 μ)
    {τ π : Ω → ℕ∞}
    (hτ : IsStoppingTime 𝒢 τ)
    (hπ : IsStoppingTime 𝒢 π)
    (hle : τ ≤ π) {N : ℕ} (hbdd : ∀ ω, π ω ≤ (N : ℕ∞)) :
    (∫ ω, stoppedValue f π ω ∂μ) ≤ (∫ ω, stoppedValue f τ ω ∂μ) := by
  sorry

end Supermartingale