import Mathlib

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

open MeasureTheory

-- 25. Stopped process measurable with respect to max filtration index
theorem stoppedProcess_measurable_at_le
    {Ω : Type*} {m0 : MeasurableSpace Ω}
    (𝒢 : Filtration ℕ m0) (f : ℕ → Ω → ℝ)
    (hadp : Adapted 𝒢 f) (τ : Ω → ℕ∞) (hτ : IsStoppingTime 𝒢 τ)
    (n : ℕ) :
    Measurable[𝒢 n] (stoppedProcess f τ n) := by
  sorry