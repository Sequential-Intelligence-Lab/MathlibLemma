import Mathlib

/-- For a nonnegative matrix, primitivity is invariant under permutation similarity. -/
lemma Matrix.IsPrimitive.conj_perm
    {n R : Type*} [Ring R] [LinearOrder R] [Fintype n] [DecidableEq n]
    {A : Matrix n n R} (h : A.IsPrimitive)
    (σ : Equiv.Perm n) :
    (Matrix.reindex σ σ A).IsPrimitive := by
  sorry
