import Mathlib


/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 15. Determinant of a matrix with two proportional rows is zero
lemma Matrix.det_eq_zero_of_two_rows_proportional
    {R} [CommRing R] {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n R) (i j : n) (hij : i ≠ j) (c : R)
    (h : A i = fun k => c * A j k) :
    A.det = 0 := by
  sorry
