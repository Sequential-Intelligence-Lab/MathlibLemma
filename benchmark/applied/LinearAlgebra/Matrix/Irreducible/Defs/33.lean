import Mathlib

/-- If a nonnegative matrix is reducible, then its quiver is not strongly connected.

We assume that there is already a `Quiver` structure on `n`, so that
`Quiver.Path i j` makes sense. -/
lemma Matrix.not_isIrreducible_iff_not_stronglyConnected
    {n R : Type*} [Quiver n] [Ring R] [LinearOrder R]
    {A : Matrix n n R}
    (hA : ∀ i j, 0 ≤ A i j) :
    ¬ A.IsIrreducible ↔
      ∃ (i j : n), i ≠ j ∧
        (¬ Nonempty (Quiver.Path i j) ∨ ¬ Nonempty (Quiver.Path j i)) := by
  sorry