import Mathlib

/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/

/-- Determinant of real skew-symmetric odd-dimensional matrix is zero. -/
lemma Matrix.det_skewSymmetric_odd
    {n : ℕ} (hodd : Odd n)
    (A : Matrix (Fin n) (Fin n) ℝ)
    (hA : Matrix.transpose A = -A) :
    Matrix.det A = 0 := by
  sorry