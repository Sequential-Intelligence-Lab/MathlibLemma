import Mathlib

open Matrix

lemma diag_kronecker [Semiring α] (A : Matrix m m α) (B : Matrix n n α) :
    Matrix.diag (Matrix.kronecker A B) =
      fun ij : m × n =>
        A ij.1 ij.1 * B ij.2 ij.2 := by
  sorry