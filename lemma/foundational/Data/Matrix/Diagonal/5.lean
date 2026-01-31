import Mathlib

open Matrix

lemma diagonal_eq_zero_iff [Zero α] [DecidableEq n] {d : n → α} :
    Matrix.diagonal d = (0 : Matrix n n α) ↔ ∀ i, d i = 0 := by
  constructor
  · intro h i
    -- Look at the (i,i) entry of both sides
    have hi := congrArg (fun m => m i i) h
    -- On the left, (diagonal d) i i = d i; on the right, 0 i i = 0
    simpa [Matrix.diagonal] using hi
  · intro h
    -- Show all entries of the matrix are zero
    ext i j
    by_cases hij : i = j
    · subst hij
      -- On-diagonal: entry is d i, which is 0 by h
      simpa [Matrix.diagonal, h]
    · -- Off-diagonal: entry is 0 by definition of diagonal
      simpa [Matrix.diagonal, hij]