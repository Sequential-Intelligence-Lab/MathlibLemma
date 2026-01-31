import Mathlib


/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 54. Determinant as coefficient of characteristic polynomial
lemma Matrix.det_eq_charPoly_coeff
    {R} [CommRing R] {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n R) :
    A.det = (-1 : R) ^ Fintype.card n *
      (A.charpoly.coeff 0) := by
  sorry
