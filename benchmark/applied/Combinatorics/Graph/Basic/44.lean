import Mathlib

variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set

-- Incidence sets lemmas

lemma Graph.incidenceSet_eq_preimage_edgeSet
    {G : Graph α β} (x : α) :
    G.incidenceSet x = { e | e ∈ G.edgeSet ∧ G.Inc e x } := by
  sorry