import Mathlib

open Matrix

universe u v

lemma rank_mul_eq_rank_of_full_rank_left
    {R : Type u} [Field R]
    {m n o : Type v} [Fintype m] [Fintype n] [Fintype o]
    (A : Matrix m n R) (B : Matrix n o R)
    (hA : A.rank = Fintype.card n) :
    (A * B).rank = B.rank := by
  sorry