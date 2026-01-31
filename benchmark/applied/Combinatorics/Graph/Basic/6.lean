import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
lemma Graph.IsNonloopAt.ne_other {G : Graph α β}
    (h : G.IsNonloopAt e x) (hx : G.Inc e x) :
    hx.other ≠ x := by
  sorry
