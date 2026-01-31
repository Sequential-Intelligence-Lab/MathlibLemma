import Mathlib


/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 40. Determinant of matrix over fraction ring equals fraction map of determinant
lemma Matrix.det_fractionRing
    {R} [CommRing R] [IsDomain R]
    (M : Matrix (Fin n) (Fin n) R) :
    (Matrix.map M (algebraMap R (FractionRing R))).det =
      algebraMap R (FractionRing R) M.det := by
  sorry
