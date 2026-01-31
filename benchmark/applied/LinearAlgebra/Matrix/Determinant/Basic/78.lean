import Mathlib


/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 79. Determinant of matrix with linearly dependent columns is zero
lemma Matrix.det_eq_zero_of_not_linearIndependent_cols'
    {R} [CommRing R] [IsDomain R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n R)
    (h : ¬LinearIndependent R (fun j => fun i => A i j)) :
    A.det = 0 := by
  sorry
