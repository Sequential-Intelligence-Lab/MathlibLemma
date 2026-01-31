import Mathlib

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/
open MeasureTheory

-- 86. Optional stopping for martingale at minimum of deterministic and random time
theorem Martingale.optional_stopping_min_det_random
    {Ω : Type*} {m0 : MeasurableSpace Ω} {μ : Measure Ω}
    [IsFiniteMeasure μ]
    {𝒢 : Filtration ℕ m0} {f : ℕ → Ω → ℝ}
    (hM : Martingale f 𝒢 μ)
    {τ : Ω → ℕ∞} (hτ : IsStoppingTime 𝒢 τ)
    (N : ℕ) :
    ∫ ω, stoppedValue f (fun ω => min (τ ω) (N : ℕ∞)) ω ∂μ
      = ∫ ω, f 0 ω ∂μ := by
  sorry