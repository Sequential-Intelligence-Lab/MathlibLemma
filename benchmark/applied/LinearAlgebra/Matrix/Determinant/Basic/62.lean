import Mathlib


/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 63. Determinant of rank-one update formula (matrix determinant lemma)
lemma Matrix.det_rankOne_update
    {R} [Field R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n R) (hA : IsUnit A.det)
    (u v : n → R) :
    (A + Matrix.vecMulVec u v).det =
      A.det * (1 + dotProduct v (A⁻¹.mulVec u)) := by
  sorry