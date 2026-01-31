import Mathlib

open Matrix

lemma diagonal_nonempty_iff
    [Fintype n] [DecidableEq n] [Zero α]
    {d : n → α} :
    (∃ i, d i ≠ 0) ↔ Matrix.diagonal d ≠ (0 : Matrix n n α) := by
  sorry