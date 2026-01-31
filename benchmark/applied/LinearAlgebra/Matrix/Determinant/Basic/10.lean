import Mathlib

/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/

namespace Matrix

variable {R} [CommRing R]
variable {n : Type*} [Fintype n] [DecidableEq n]

/-- Hypothetical matrix that scales the `i`-th row of a matrix by `c` when multiplied on the left. -/
def elemMulRow (i : n) (c : R) : Matrix n n R :=
  fun r s => if r = i ∧ s = i then c else if r = s then 1 else 0

end Matrix

-- 11. Determinant scales under left multiplication by row-scaling matrix
lemma Matrix.det_mul_elem_mulRow
    {R} [CommRing R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n R) (i : n) (c : R) :
    (Matrix.elemMulRow i c * A).det = c * A.det := by
  sorry