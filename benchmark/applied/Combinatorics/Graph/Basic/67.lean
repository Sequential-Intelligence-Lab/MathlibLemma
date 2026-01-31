import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
lemma Graph.IsLoopAt.adj_self {G : Graph α β}
    (h : G.IsLoopAt e x) : G.Adj x x := by
  sorry
