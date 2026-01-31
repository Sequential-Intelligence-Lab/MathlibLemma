import Mathlib

/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/

-- 66. Determinant of integer unimodular matrix is ±1
lemma Matrix.det_unimodular_eq_one_or_neg_one
    {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n ℤ)
    (h : IsUnit A.det) :
    A.det = 1 ∨ A.det = -1 := by
  sorry