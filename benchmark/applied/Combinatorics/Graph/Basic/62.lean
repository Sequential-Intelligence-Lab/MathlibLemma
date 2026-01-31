import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
lemma Graph.adj_of_exists_isNonloopAt {G : Graph α β}
    (h : ∃ e, G.IsNonloopAt e x) :
    ∃ y, G.Adj x y := by
  sorry
