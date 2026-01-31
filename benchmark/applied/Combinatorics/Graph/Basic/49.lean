import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
lemma Graph.mem_incidenceSet_iff {G : Graph α β} {x : α} {e : β} :
    e ∈ G.incidenceSet x ↔ G.Inc e x := by
  sorry
