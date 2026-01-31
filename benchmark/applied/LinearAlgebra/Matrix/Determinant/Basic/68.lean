import Mathlib


/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 69. Determinant of block upper triangular with diagonal blocks scalar
lemma Matrix.det_fromBlocks_scalar_upper
    {R} [CommRing R]
    {m n : Type*} [Fintype m] [DecidableEq m] [Fintype n] [DecidableEq n]
    (a : R) (b : R) (B : Matrix m n R) :
    (Matrix.fromBlocks (Matrix.scalar m a) B 0 (Matrix.scalar n b)).det =
      a ^ Fintype.card m * b ^ Fintype.card n := by
  sorry
