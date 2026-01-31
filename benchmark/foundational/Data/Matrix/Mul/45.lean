import Mathlib

open Matrix

lemma vecMul_comp
    {α : Type _} {l m n : Type _}
    [NonUnitalNonAssocSemiring α] [Fintype l] [Fintype m] [Fintype n]
    (v : l → α) (A : Matrix l m α) (B : Matrix m n α) :
    vecMul v (A * B) = vecMul (vecMul v A) B := by
  sorry