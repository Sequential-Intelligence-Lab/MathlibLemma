import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
lemma Graph.isNonloopAt_of_isLink_ne {G : Graph α β}
    (h : G.IsLink e x y) (hxy : x ≠ y) : G.IsNonloopAt e x := by
  sorry
