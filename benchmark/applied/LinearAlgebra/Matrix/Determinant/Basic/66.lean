import Mathlib


/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 67. Determinant is multiplicative on endomorphism algebra
lemma AlgHom.mapMatrix_det
    {R S} [CommRing R] [CommRing S] [Algebra R S]
    {n : Type*} [Fintype n] [DecidableEq n]
    (f : R →ₐ[R] S) (A : Matrix n n R) :
    (Matrix.map A f).det = f A.det := by
  sorry
