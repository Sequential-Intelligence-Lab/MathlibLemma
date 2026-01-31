import Mathlib

/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 22. Determinant of product of conjugate matrices equal
lemma Matrix.det_conj_of_units
    {R} [CommRing R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (u : (Matrix n n R)ˣ) (A : Matrix n n R) :
    ((u : Matrix n n R) * A * (u⁻¹ : Matrix n n R)).det = A.det := by
  sorry