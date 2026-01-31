import Mathlib


/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 45. Determinant of map of alternating multilinear map's matrix
lemma Matrix.det_map_alternatingMap
    {R S} [CommRing R] [CommRing S]
    (f : R →+* S)
    {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n R) :
    (Matrix.map A f).det = f A.det := by
  sorry
