import Mathlib

/-- If every vertex of a finite quiver has out-degree at least one, then there exists a directed
cycle. -/
lemma Quiver.exists_cycle_of_outDegree_pos
    {V : Type*} [Quiver V] [Fintype V]
    (h : ∀ v : V, ¬ IsEmpty (Σ w, v ⟶ w)) :
    ∃ v : V, ∃ p : Quiver.Path v v, 0 < p.length := by
  sorry
