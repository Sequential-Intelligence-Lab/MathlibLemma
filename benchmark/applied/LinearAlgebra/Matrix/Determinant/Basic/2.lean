import Mathlib


/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 3. Determinant of scalar matrix
lemma Matrix.det_scalar {R} [CommRing R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (a : R) :
    (Matrix.scalar n a).det = a ^ Fintype.card n := by
  sorry
