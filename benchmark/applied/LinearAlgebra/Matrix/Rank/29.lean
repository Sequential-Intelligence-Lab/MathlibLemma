import Mathlib

open Matrix

namespace Matrix

lemma rank_eq_rank_conjTranspose
    {m n : Type*}
    [Fintype m] [Fintype n]
    [DecidableEq m] [DecidableEq n]
    (A : Matrix m n ℂ) :
    A.rank = (Matrix.conjTranspose A).rank := by
  sorry

end Matrix