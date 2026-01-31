import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
lemma Graph.adj_of_isNonloopAt {G : Graph α β}
    (h : G.IsNonloopAt e x) :
    G.Adj x h.inc.other := by
  sorry
