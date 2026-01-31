import Mathlib

/-- If a nonnegative real sequence has convergent sum, then for any `ε > 0`, only finitely many
terms exceed `ε`. -/
lemma finite_setOf_gt_of_summable {u : ℕ → ℝ} (hpos : ∀ n, 0 ≤ u n)
    (hs : Summable u) (ε : ℝ) (hε : 0 < ε) :
    {n | ε < u n}.Finite := by
  sorry
