import Mathlib

open Matrix

universe u v

lemma Matrix.rank_eq_rank_transpose
    {R : Type u} {m n : Type v} [Field R] [Fintype m] [Fintype n]
    (A : Matrix m n R) :
    A.rank = Aᵀ.rank := by
  -- In `mathlib`, we have the lemma:
  -- `Matrix.rank_transpose : (Aᵀ).rank = A.rank`.
  -- We just use it and take the symmetry.
  simpa using (Matrix.rank_transpose A).symm