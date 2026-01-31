import Mathlib


/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 30. Determinant of a matrix with a zero column and something else nonzero is zero
lemma Matrix.det_eq_zero_of_exists_zero_col
    {R} [CommRing R] {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n R)
    (j : n) (hj : ∀ i, A i j = 0) :
    A.det = 0 := by
  sorry
