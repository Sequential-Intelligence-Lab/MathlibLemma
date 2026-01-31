import Mathlib

/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/

/-- 85. Determinant of diagonalization equals product of eigenvalues -/
lemma Matrix.det_diagonalization
    {K} [Field K] [IsAlgClosed K]
    {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n K)
    (P D : Matrix n n K)
    (h : P⁻¹ * A * P = D)
    (hD : ∀ i j, i ≠ j → D i j = 0) :
    A.det = ∏ i, D i i := by
  sorry