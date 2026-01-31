import Mathlib

/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/

/-- A placeholder definition for an "elementary column-addition" matrix.
    This is only to make the lemma below typecheck. -/
def Matrix.elemAddCol
    {R} [Semiring R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (i j : n) (c : R) : Matrix n n R :=
  0

-- 10. Determinant is invariant under right multiplication by elementary col-add matrix
lemma Matrix.det_elem_addCol_mul
    {R} [CommRing R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n R) (i j : n) (hij : i ≠ j) (c : R) :
    (A * Matrix.elemAddCol i j c).det = A.det := by
  sorry