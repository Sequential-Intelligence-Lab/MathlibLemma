import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
lemma Graph.IsLoopAt.eq_other {G : Graph α β}
    (h : G.IsLoopAt e x) (hx : G.Inc e x) :
    hx.other = x := by
  sorry
