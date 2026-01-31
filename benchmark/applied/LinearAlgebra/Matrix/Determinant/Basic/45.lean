import Mathlib


/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 46. Determinant of upper-left minor as polynomial in entries
lemma Matrix.det_minor_ul
    {R} [CommRing R] {n : ℕ}
    (A : Matrix (Fin (n+1)) (Fin (n+1)) R) :
    (A.submatrix Fin.castSucc Fin.castSucc).det *
      A (Fin.last _) (Fin.last _) =
    A.det := by
  -- nontrivial, intended to be a Harder identity
  sorry