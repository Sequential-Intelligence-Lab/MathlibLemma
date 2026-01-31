import Mathlib

/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 33. Determinant of transpose matrix over a commutative ring
lemma Matrix.det_transpose_map_polynomial
    {S} [CommRing S]
    {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n S) :
    A.transpose.det = A.det := by
  sorry