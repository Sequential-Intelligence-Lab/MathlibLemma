import Mathlib

/-- In a strongly connected quiver on a finite type, there is a path between any two vertices of
length bounded by the cardinality. -/
lemma Quiver.IsSStronglyConnected.exists_path_bounded_length
    {V : Type*} [Quiver V] [Fintype V]
    (h : Quiver.IsSStronglyConnected V) :
    ∀ v w : V, ∃ p : Quiver.Path v w, p.length ≤ Fintype.card V := by
  sorry
