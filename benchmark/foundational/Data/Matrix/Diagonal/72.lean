import Mathlib

open Matrix

variable {R α n : Type _} [SMul R α]

/-- Scalar multiplication on matrices is defined pointwise. -/
instance instSMulMatrix : SMul R (Matrix n n α) where
  smul r A := fun i j => r • A i j

/-- Diagonal of scalar multiplication of a matrix. -/
lemma diag_smul (r : R) (A : Matrix n n α) :
    Matrix.diag (r • A) = fun i => r • A i i := by
  sorry