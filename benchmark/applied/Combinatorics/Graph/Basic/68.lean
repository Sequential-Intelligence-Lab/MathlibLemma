import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
lemma Graph.not_adj_self_of_no_loops {G : Graph α β}
    (h : ∀ e, ¬ G.IsLoopAt e x) :
    ¬ G.Adj x x := by
  sorry
