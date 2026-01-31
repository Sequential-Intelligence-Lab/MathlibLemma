import Mathlib

/-- The quiver of a nonnegative matrix has at least one edge from each row index that has a
strictly positive entry. -/
lemma Matrix.toQuiver_exists_edge_of_pos
    {n R : Type*} [Ring R] [LinearOrder R]
    (A : Matrix n n R) (i : n)
    (h : ∃ j, 0 < A i j) :
    ∃ j, (Matrix.toQuiver A).Hom i j := by
  sorry