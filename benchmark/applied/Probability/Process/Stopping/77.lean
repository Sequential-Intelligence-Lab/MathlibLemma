import Mathlib

-- 78. Stopped process at zero equals u 0 (for ℕ-indexed).
lemma stoppedProcess_nat_zero
  {Ω β : Type*}
  (u : ℕ → Ω → β) (τ : Ω → ℕ∞) :
  MeasureTheory.stoppedProcess u τ 0 = u 0 := by
  sorry
