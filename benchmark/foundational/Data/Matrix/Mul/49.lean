import Mathlib

lemma vecMul_injective_iff [NonUnitalSemiring α] [Fintype m]
    (A : Matrix m n α) :
    Function.Injective (fun v : m → α => Matrix.vecMul v A) ↔
      ∀ v : m → α, Matrix.vecMul v A = 0 → v = 0 := by
  sorry