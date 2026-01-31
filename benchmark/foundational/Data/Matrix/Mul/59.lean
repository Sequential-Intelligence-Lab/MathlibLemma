import Mathlib

universe u v

lemma vecMul_single_coord
    {α : Type u} {m n : Type v}
    [NonUnitalNonAssocSemiring α] [Fintype m] [DecidableEq m]
    (A : Matrix m n α) (i : m) (x : α) :
    Matrix.vecMul (Pi.single i x : m → α) A =
      x • A.row i := by
  sorry