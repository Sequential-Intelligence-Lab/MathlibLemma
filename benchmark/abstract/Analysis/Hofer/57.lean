import Mathlib

/-- If a sequence of nonnegative reals is summable and dominates another nonnegative sequence,
then the second sequence is summable. -/
lemma Summable_of_le_of_nonneg
    {u v : ℕ → ℝ} (hu : Summable u)
    (hpos : ∀ n, 0 ≤ v n) (hle : ∀ n, v n ≤ u n) :
    Summable v := by
  sorry
