import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
lemma Graph.IsLoopAt_iff_isLink_eq {G : Graph α β} :
    G.IsLoopAt e x ↔ G.IsLink e x x := by
  sorry
