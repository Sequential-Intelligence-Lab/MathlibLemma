import Mathlib

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

open MeasureTheory

-- 13. Stopped process preserves non-negativity
theorem stoppedProcess_nonneg
    {Ω : Type*} {m0 : MeasurableSpace Ω} {μ : Measure Ω}
    {𝒢 : Filtration ℕ m0} {f : ℕ → Ω → ℝ}
    (h0 : ∀ n, 0 ≤ f n) {τ : Ω → ℕ∞} :
    ∀ n, 0 ≤ stoppedProcess f τ n := by
  sorry