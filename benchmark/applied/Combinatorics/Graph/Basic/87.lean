import Mathlib

variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set

lemma Graph.card_edgeSet_pos_iff {α β : Type*} (G : Graph α β)
    [Fintype G.edgeSet] :
    0 < Fintype.card (G.edgeSet) ↔ (G.edgeSet).Nonempty := by
  sorry