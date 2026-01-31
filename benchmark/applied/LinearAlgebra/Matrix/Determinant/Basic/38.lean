import Mathlib


/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 39. Determinant of matrix over localization equals localized determinant
lemma Matrix.det_localization
    {R S} [CommRing R] [CommRing S] [Algebra R S]
    (M : Matrix (Fin n) (Fin n) R) :
    (Matrix.map M (algebraMap R S)).det = algebraMap R S M.det := by
  sorry
