import Mathlib

/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/

/-- Determinant of upper triangular matrix equals product of diagonal. -/
lemma Matrix.det_upperTriangular
    {R} [CommRing R]
    {n : Type*} [Fintype n] [DecidableEq n] [LinearOrder n]
    (A : Matrix n n R)
    (hA : ∀ i j, i > j → A i j = 0) :
    A.det = ∏ i, A i i := by
  sorry