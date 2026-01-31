import Mathlib

lemma vecMul_map_vecMul
    [NonAssocSemiring α] [NonAssocSemiring β]
    [NonUnitalNonAssocSemiring α] [NonUnitalNonAssocSemiring β]
    [Fintype m]
    (f : α →+* β) (A : Matrix m n α) (v : m → α) :
    Matrix.vecMul (fun i => f (v i)) (A.map f) =
      fun i => f (Matrix.vecMul v A i) := by
  sorry