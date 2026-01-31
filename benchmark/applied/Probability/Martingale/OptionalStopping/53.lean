import Mathlib

open MeasureTheory

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/
-- 56. `stoppedProcess` preserves measurability as a function (curried)
theorem measurable_stoppedProcess_in_ω
    {Ω : Type*} {m0 : MeasurableSpace Ω}
    {𝒢 : Filtration ℕ m0} {f : ℕ → Ω → ℝ}
    (hadp : Adapted 𝒢 f) {τ : Ω → ℕ∞}
    (hτ : IsStoppingTime 𝒢 τ) :
    Measurable (fun ω => (MeasureTheory.stoppedProcess f τ) (τ ω).toNat ω) := by
  sorry