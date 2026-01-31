import Mathlib

/-- If every vertex of a finite quiver has in-degree at least one, there exists a directed cycle. -/
lemma Quiver.exists_cycle_of_inDegree_pos
    {V : Type*} [Quiver V] [Fintype V]
    (h : ∀ v : V, ¬ IsEmpty (Σ w, w ⟶ v)) :
    ∃ v : V, ∃ p : Quiver.Path v v, 0 < p.length := by
  sorry
