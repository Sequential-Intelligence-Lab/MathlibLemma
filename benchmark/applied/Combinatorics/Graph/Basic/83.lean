import Mathlib

variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set

lemma Graph.card_incidenceSet_eq_zero_iff {G : Graph α β} (x : α)
    [Fintype (↥(G.incidenceSet x))] :
    Fintype.card (↥(G.incidenceSet x)) = 0 ↔
      G.incidenceSet x = (∅ : Set β) := by
  sorry