import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
lemma Graph.Adj.self_iff_exists_loop {G : Graph α β} :
    G.Adj x x ↔ ∃ e, G.IsLoopAt e x := by
  sorry
