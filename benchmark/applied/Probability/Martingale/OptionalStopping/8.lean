import Mathlib

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

/-- 11. Hitting time is ≤ first exit time between two thresholds -/
theorem hittingBtwn_le_hitting
    {Ω : Type*} {m0 : MeasurableSpace Ω}
    {f : ℕ → Ω → ℝ}
    {A : Set ℝ} {m n : ℕ} :
    (∀ ω k, m ≤ k → k ≤ n → f k ω ∈ A →
      MeasureTheory.hittingBtwn f A m n ω ≤ k) := by
  sorry