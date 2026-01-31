import Mathlib


/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 64. Determinant commutes with scalar extension of vector space
lemma Matrix.det_scalarExtension
    {R S} [CommRing R] [CommRing S] [Algebra R S]
    {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n R) :
    (Matrix.map A (algebraMap R S)).det =
      algebraMap R S A.det := by
  sorry
