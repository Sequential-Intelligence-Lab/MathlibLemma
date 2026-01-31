import Mathlib

/-- If a matrix is irreducible, then its transpose is also irreducible (no extra assumptions). -/
lemma Matrix.IsIrreducible.transpose'
    {n R : Type*} [Ring R] [LinearOrder R]
    {A : Matrix n n R} (h : A.IsIrreducible) :
    A.transpose.IsIrreducible := by
  sorry