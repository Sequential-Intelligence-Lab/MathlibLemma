import Mathlib


/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 47. Determinant of identity plus rank-one operator equals 1 + trace
lemma Matrix.det_one_add_rankOne
    {R} [CommRing R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (u v : n → R) :
    (1 + Matrix.vecMulVec u v).det = 1 + Matrix.trace (Matrix.vecMulVec u v) := by
  sorry
