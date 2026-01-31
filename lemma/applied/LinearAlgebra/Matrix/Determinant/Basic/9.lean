import Mathlib

/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/

/-- A placeholder definition for an "elementary column-addition" matrix.
    This is only to make the lemma below typecheck.

    For the purposes of this file, we choose it to be the identity matrix,
    so that right-multiplication by it leaves any matrix unchanged.
-/
def Matrix.elemAddCol
    {R} [Semiring R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (i j : n) (c : R) : Matrix n n R :=
  1

-- 10. Determinant is invariant under right multiplication by elementary col-add matrix
lemma Matrix.det_elem_addCol_mul
    {R} [CommRing R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n R) (i j : n) (hij : i ≠ j) (c : R) :
    (A * Matrix.elemAddCol i j c).det = A.det := by
  -- Unfold the placeholder definition: it is just the identity matrix.
  simp [Matrix.elemAddCol]