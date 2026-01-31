import Mathlib

lemma diagonal_isDiag [Zero α] [DecidableEq n] (d : n → α) :
    Matrix.IsDiag (Matrix.diagonal d : Matrix n n α) := by
  intro i j hij
  -- For diagonal matrices, off-diagonal entries are zero.
  -- `simp` uses the lemma for `Matrix.diagonal` together with `hij : i ≠ j`.
  simpa [Matrix.diagonal, hij]