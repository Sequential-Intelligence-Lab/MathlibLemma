import Mathlib

open MeasureTheory

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

/-- 20. Hitting time measurability as random variable into `ℕ∞`. -/
theorem measurable_hittingBtwn
    {Ω : Type*} {m0 : MeasurableSpace Ω}
    {𝒢 : Filtration ℕ∞ m0} {f : ℕ∞ → Ω → ℝ}
    (hadp : MeasureTheory.Adapted 𝒢 f) {A : Set ℝ}
    (hA : MeasurableSet A) {m n : ℕ∞} :
    Measurable (fun ω => (MeasureTheory.hittingBtwn f A m n ω : ℕ∞) : Ω → ℕ∞) := by
  sorry