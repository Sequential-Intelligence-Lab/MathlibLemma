import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
lemma Graph.IsLoopAt_iff_other_eq {G : Graph α β}
    (hx : G.Inc e x) :
    G.IsLoopAt e x ↔ hx.other = x := by
  sorry
