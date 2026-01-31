import Mathlib

open Matrix

lemma Matrix.rank_smul_eq_zero_iff
    {R : Type _} {m n : Type _}
    [Field R] [Fintype m] [Fintype n]
    {r : R} (A : Matrix m n R) :
    (r • A).rank = 0 ↔ r = 0 ∨ A.rank = 0 := by
  sorry