import Mathlib

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

open MeasureTheory

-- 58. Optional sampling for supermartingale with decreasing stopping times
theorem Supermartingale.expected_stoppedValue_mono_decreasing_stopping
    {Ω : Type*} {m0 : MeasurableSpace Ω} {μ : Measure Ω}
    {𝒢 : Filtration ℕ m0} {f : ℕ → Ω → ℝ}
    [SigmaFiniteFiltration μ 𝒢]
    (hf : Supermartingale f 𝒢 μ)
    (τ : ℕ → Ω → ℕ∞)
    (hτ : ∀ n, IsStoppingTime 𝒢 (τ n))
    (hmono : ∀ n ω, τ (n+1) ω ≤ τ n ω)
    (hbdd : ∃ N, ∀ n ω, τ n ω ≤ N) :
    Monotone (fun n => ∫ ω, stoppedValue f (τ n) ω ∂μ) := by
  sorry