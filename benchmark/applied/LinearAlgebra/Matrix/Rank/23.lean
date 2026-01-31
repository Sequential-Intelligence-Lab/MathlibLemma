import Mathlib

open Matrix

lemma rank_mul_eq_rank_of_eq_card_height
    {R : Type _} [Field R]
    {m n o : Type _} [Fintype m] [Fintype n] [Fintype o]
    (A : Matrix m n R) (B : Matrix n o R)
    (hB : Matrix.rank B = Fintype.card n) :
    Matrix.rank (A * B) = Matrix.rank A := by
  sorry