import Mathlib

open scoped Matrix

lemma Matrix.rank_range_mulVecLin_eq_rank {R m n} [CommRing R] [Fintype n]
    (A : Matrix m n R) :
    Module.rank R (LinearMap.range A.mulVecLin) = A.rank := by
  sorry