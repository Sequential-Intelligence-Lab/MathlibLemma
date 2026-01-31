import Mathlib


/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 16. Determinant of a matrix with two proportional columns is zero
lemma Matrix.det_eq_zero_of_two_cols_proportional
    {R} [CommRing R] {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n R) (i j : n) (hij : i ≠ j) (c : R)
    (h : ∀ k, A k i = c * A k j) :
    A.det = 0 := by
  sorry
