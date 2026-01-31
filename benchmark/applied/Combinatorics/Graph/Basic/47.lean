import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
lemma Graph.incidenceSet_eq_empty_iff {G : Graph α β} (x : α) :
    G.incidenceSet x = (∅ : Set β) ↔
      ∀ e, ¬ G.Inc e x := by
  sorry
