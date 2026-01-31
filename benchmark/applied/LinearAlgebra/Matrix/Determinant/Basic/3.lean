import Mathlib


/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 4. Determinant of scalar plus matrix when scalar is zero
lemma Matrix.det_scalar_add_eq_det {R} [CommRing R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n R) :
    (Matrix.scalar n (0 : R) + A).det = A.det := by
  sorry
