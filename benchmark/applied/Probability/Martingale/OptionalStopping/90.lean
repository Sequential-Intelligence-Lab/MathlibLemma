import Mathlib

open MeasureTheory
open scoped MeasureTheory

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

/-- 93. Optional sampling for difference of submartingales (statement) -/
theorem optional_stopping_for_difference_submartingale
    {Ω : Type*} [m0 : MeasurableSpace Ω]
    {𝒢 : Filtration ℕ m0}
    {μ : Measure Ω} [SigmaFiniteFiltration μ 𝒢]
    {f g : ℕ → Ω → ℝ}
    (hf : Submartingale f 𝒢 μ)
    (hg : Supermartingale g 𝒢 μ)
    {τ π : Ω → ℕ∞}
    (hτ : IsStoppingTime 𝒢 τ)
    (hπ : IsStoppingTime 𝒢 π)
    (hle : τ ≤ π)
    {N : ℕ} (hbdd : ∀ ω, π ω ≤ N)
    -- Extra assumptions to make expectations well-typed/defined:
    (hint₁ : Integrable (stoppedValue f τ - stoppedValue g τ) μ)
    (hint₂ : Integrable (stoppedValue f π - stoppedValue g π) μ) :
    (∫ ω, (stoppedValue f τ ω - stoppedValue g τ ω) ∂μ) ≤
      (∫ ω, (stoppedValue f π ω - stoppedValue g π ω) ∂μ) := by
  sorry