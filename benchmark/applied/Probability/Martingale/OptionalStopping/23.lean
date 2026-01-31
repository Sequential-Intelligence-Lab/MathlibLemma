import Mathlib

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

open MeasureTheory

-- 26. Stopped process agrees with process after stopping (absorbing)
theorem stoppedProcess_absorbing
    {Ω : Type*} {m0 : MeasurableSpace Ω}
    {𝒢 : MeasureTheory.Filtration ℕ m0} {f : ℕ → Ω → ℝ}
    {τ : Ω → ℕ∞} (n : ℕ) :
    ∀ ω, (τ ω).toNat ≤ n →
      MeasureTheory.stoppedProcess f τ (n + 1) ω =
        MeasureTheory.stoppedProcess f τ n ω := by
  sorry