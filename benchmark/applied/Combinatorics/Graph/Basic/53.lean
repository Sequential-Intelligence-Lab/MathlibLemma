import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
lemma Graph.loopSet_subset_incidenceSet' {G : Graph α β} (x : α) :
    G.loopSet x ⊆ G.incidenceSet x := by
  sorry
