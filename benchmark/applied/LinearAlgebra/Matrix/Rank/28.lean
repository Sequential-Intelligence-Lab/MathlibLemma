import Mathlib

open Matrix

universe u v

lemma Matrix.rank_eq_rank_transpose
    {R : Type u} {m n : Type v} [Field R] [Fintype m] [Fintype n]
    (A : Matrix m n R) :
    A.rank = Aᵀ.rank := by
  sorry