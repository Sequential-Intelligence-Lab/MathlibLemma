import Mathlib

/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/

namespace Matrix

variable {R} [CommRing R]
variable {n : Type*} [Fintype n] [DecidableEq n]

/-- Hypothetical matrix that scales column `i` of a matrix by `c` when multiplied on the right. -/
def elemMulCol (i : n) (c : R) : Matrix n n R :=
  fun j k => if k = i then (if j = k then c else 0) else (if j = k then 1 else 0)

end Matrix

-- 12. Determinant scales under right multiplication by col-scaling matrix
lemma Matrix.det_elem_mulCol_mul
    {R} [CommRing R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n R) (i : n) (c : R) :
    (A * Matrix.elemMulCol i c).det = c * A.det := by
  sorry