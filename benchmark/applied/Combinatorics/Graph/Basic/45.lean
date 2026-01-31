import Mathlib

variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set

lemma Graph.incidenceSet_inter_edgeSet_eq {α β : Type*} (G : Graph α β) (x : α) :
    G.incidenceSet x ∩ G.edgeSet = G.incidenceSet x := by
  sorry