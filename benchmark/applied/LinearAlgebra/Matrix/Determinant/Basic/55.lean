import Mathlib


/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 56. Determinant of scalar multiple of identity plus nilpotent
lemma Matrix.det_smul_one_add_nilpotent
    {R} [CommRing R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (a : R) (N : Matrix n n R) (hN : IsNilpotent N) :
    (a • (1 + N)).det = a ^ Fintype.card n := by
  sorry
