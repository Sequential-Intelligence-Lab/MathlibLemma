import Mathlib

variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set

-- We assume G.loopSet x has a Fintype structure so Fintype.card can be used.
lemma Graph.card_loopSet_pos_iff {G : Graph α β} (x : α)
    [Fintype ↑(G.loopSet x)] :
    0 < Fintype.card (↥(G.loopSet x)) ↔
      (G.loopSet x).Nonempty := by
  sorry