import Mathlib

lemma Matrix.rank_eq_rank_of_vecMul_eq
    {R m n} [CommRing R] [Fintype n]
    (A B : Matrix m n R)
    (h : ∀ v, A.mulVec v = B.mulVec v) :
    A.rank = B.rank := by
  sorry
