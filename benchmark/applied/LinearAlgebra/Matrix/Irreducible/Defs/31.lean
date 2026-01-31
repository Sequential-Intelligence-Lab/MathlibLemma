import Mathlib

/-- If a matrix is primitive, then its transpose is also primitive. -/
lemma Matrix.IsPrimitive.transpose
    {n R : Type*} [Ring R] [LinearOrder R]
    [Fintype n] [DecidableEq n] [IsOrderedRing R] [PosMulStrictMono R] [Nontrivial R]
    {A : Matrix n n R} (h : A.IsPrimitive) :
    A.transpose.IsPrimitive := by
  sorry