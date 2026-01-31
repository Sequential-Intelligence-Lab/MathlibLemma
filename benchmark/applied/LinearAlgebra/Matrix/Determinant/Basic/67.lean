import Mathlib


/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 68. Determinant characterizes invertibility over a field
lemma Matrix.isUnit_iff_det_ne_zero
    {K} [Field K] {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n K) :
    IsUnit A ↔ A.det ≠ 0 := by
  sorry
