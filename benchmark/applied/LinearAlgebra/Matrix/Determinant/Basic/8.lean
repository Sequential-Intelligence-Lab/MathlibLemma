import Mathlib

/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/

/-- Elementary matrix that adds `c` times row `j` to row `i`. -/
def Matrix.elemAdd
    {R} [Semiring R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (i j : n) (c : R) : Matrix n n R :=
  fun r s =>
    if h : r = i ∧ s = j then c else if r = s then 1 else 0

/-- Determinant is invariant under left multiplication by an elementary row-add matrix. -/
lemma Matrix.det_mul_elem_addRow
    {R} [CommRing R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n R) (i j : n) (hij : i ≠ j) (c : R) :
    (Matrix.elemAdd i j c * A).det = A.det := by
  sorry