import Mathlib

/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 8. Determinant of lower triangular matrix equals product of diagonal
lemma Matrix.det_lowerTriangular
    {R} [CommRing R]
    (n : ℕ)
    (A : Matrix (Fin n) (Fin n) R)
    (hA : ∀ i j, j > i → A i j = 0) :
    A.det = ∏ i, A i i := by
  sorry