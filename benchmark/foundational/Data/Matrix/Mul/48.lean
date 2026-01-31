import Mathlib

lemma mulVec_injective_iff [NonUnitalSemiring α] [Fintype n]
    (A : Matrix m n α) :
    Function.Injective (fun v => Matrix.mulVec A v) ↔
      ∀ v, Matrix.mulVec A v = 0 → v = 0 := by
  sorry