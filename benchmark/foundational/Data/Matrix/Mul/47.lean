import Mathlib

lemma vecMul_linear [Semiring α] [Fintype m]
    (A : Matrix m n α) :
    IsLinearMap α (fun v : m → α => Matrix.vecMul v A) := by
  sorry