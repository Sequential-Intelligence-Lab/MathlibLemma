import Mathlib

variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set

lemma Graph.card_incidenceSet_pos_iff {G : Graph α β} (x : α)
    [Fintype ↥(G.incidenceSet x)] :
    0 < Fintype.card (↥(G.incidenceSet x)) ↔
      (G.incidenceSet x).Nonempty := by
  sorry