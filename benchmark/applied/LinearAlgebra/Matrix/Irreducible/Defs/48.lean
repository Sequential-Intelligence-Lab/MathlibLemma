import Mathlib

/-- In a strongly connected finite quiver, there is a simple cycle through any vertex whose
length is at most the cardinality. -/
lemma Quiver.IsSStronglyConnected.exists_simple_cycle_through
    {V : Type*} [Quiver V] [Fintype V]
    (h : Quiver.IsSStronglyConnected V) (v : V) :
    ∃ p : Quiver.Path v v, 0 < p.length ∧
      (∀ q : Quiver.Path v v, q.length < p.length → q = Quiver.Path.nil) ∧
      p.length ≤ Fintype.card V := by
  sorry
