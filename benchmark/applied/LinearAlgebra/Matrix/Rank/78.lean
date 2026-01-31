import Mathlib

open scoped BigOperators

lemma Matrix.rank_image_le
    {R m n} [CommRing R] [Fintype m] [Fintype n]
    (A : Matrix m n R) (s : Set (n → R)) :
    Module.finrank R (Submodule.span R (A.mulVec '' s)) ≤ A.rank := by
  sorry