import Mathlib

open Matrix

universe u v w

lemma Matrix.rank_mul_eq_rank_of_eq_card_width
    {R : Type u} {m : Type v} {n : Type w} {o : Type _}
    [Field R] [Fintype m] [Fintype n] [Fintype o]
    (A : Matrix m n R) (B : Matrix n o R)
    (hA : A.rank = Fintype.card n) :
    (A * B).rank = B.rank := by
  sorry