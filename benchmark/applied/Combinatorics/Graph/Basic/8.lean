import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
lemma Graph.IsNonloopAt_iff_other_ne {G : Graph α β}
    (hx : G.Inc e x) :
    G.IsNonloopAt e x ↔ hx.other ≠ x := by
  sorry
