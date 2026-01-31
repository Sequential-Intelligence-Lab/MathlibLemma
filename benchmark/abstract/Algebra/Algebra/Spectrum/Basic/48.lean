import Mathlib

lemma spectrum.subset_roots_charpoly_matrix
    {R : Type*} [Field R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n R) :
    spectrum R A ⊆ {r : R | (Matrix.charpoly A).IsRoot r} := by
  sorry
