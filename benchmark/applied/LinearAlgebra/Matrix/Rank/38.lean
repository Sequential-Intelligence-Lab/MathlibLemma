import Mathlib

open Matrix

universe u v

lemma Matrix.rank_le_finrank_submodule_cols
    {R : Type u} {m n : Type v} [Field R] [Fintype m] [Fintype n]
    (A : Matrix m n R) (U : Submodule R (m → R))
    (hU : Submodule.span R (Set.range A.col) ≤ U) :
    A.rank ≤ Module.finrank R U := by
  sorry