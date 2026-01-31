import Mathlib

/-- For a nonnegative matrix, irreducibility is invariant under permutation similarity. -/
lemma Matrix.IsIrreducible.conj_perm
    {n R : Type*} [Ring R] [LinearOrder R] [Fintype n] [DecidableEq n]
    {A : Matrix n n R} (h : A.IsIrreducible)
    (σ : Equiv.Perm n) :
    (Matrix.reindex σ σ A).IsIrreducible := by
  sorry
