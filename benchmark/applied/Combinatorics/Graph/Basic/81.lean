import Mathlib

variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set

lemma Graph.card_loopSet_le_incidenceSet
    (G : Graph α β) (x : α)
    [Fintype (G.loopSet x)] [Fintype (G.incidenceSet x)] :
    Fintype.card (↥(G.loopSet x)) ≤ Fintype.card (↥(G.incidenceSet x)) := by
  sorry