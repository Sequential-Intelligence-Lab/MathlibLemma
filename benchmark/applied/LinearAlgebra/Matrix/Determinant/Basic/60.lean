import Mathlib

/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 61. Determinant of real symmetric positive definite matrix is positive
lemma Matrix.det_pos_of_posDef
    {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n ℝ)
    (hHermitian : A.IsHermitian)
    (hPosDef : Prop) :
    0 < A.det := by
  sorry