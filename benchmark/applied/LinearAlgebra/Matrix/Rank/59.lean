import Mathlib

open Matrix

/-- Row permutation of a matrix by an equivalence on the row index type. -/
abbrev Matrix.rowPerm {m n R} (A : Matrix m n R) (σ : m ≃ m) : Matrix m n R :=
  Matrix.reindex σ (Equiv.refl n) A

/-- Rank is invariant under swapping two rows via a permutation. -/
lemma Matrix.rank_rowPerm_swap_eq
    {R m n} [CommRing R] [Fintype m] [Fintype n] [DecidableEq m]
    (A : Matrix m n R) (i j : m) :
    (Matrix.rowPerm A (Equiv.swap i j)).rank = A.rank := by
  sorry

/-- Specialization of the previous lemma to square matrices. -/
lemma Matrix.rank_rowPerm_swap_eq_square
    {R m} [CommRing R] [Fintype m] [DecidableEq m]
    (A : Matrix m m R) (i j : m) :
    (Matrix.rowPerm A (Equiv.swap i j)).rank = A.rank := by
  sorry