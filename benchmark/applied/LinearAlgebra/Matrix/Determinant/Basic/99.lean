import Mathlib

open Matrix

/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 100. Determinant of Cayley transform matrix for skew-symmetric matrix is 1
lemma Matrix.det_cayley_transform
    {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n ℝ)
    (hA : A.transpose = -A)
    (hI : (1 + A).det ≠ 0) :
    ((1 - A) * (1 + A)⁻¹).det = 1 := by
  sorry