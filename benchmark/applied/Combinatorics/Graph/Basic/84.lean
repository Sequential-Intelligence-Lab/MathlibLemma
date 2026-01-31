import Mathlib

variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set

lemma Graph.card_loopSet_eq_zero_iff {G : Graph α β} (x : α)
    [Fintype (↥(G.loopSet x))] :
    Fintype.card (↥(G.loopSet x)) = 0 ↔
      G.loopSet x = (∅ : Set β) := by
  sorry