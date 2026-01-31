import Mathlib

lemma spectrum.mem_of_isRoot_charpoly_matrix
    {R : Type*} [Field R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n R) (r : R)
    (hroot : (Matrix.charpoly A).IsRoot r) :
    r ∈ spectrum R A := by
  sorry
