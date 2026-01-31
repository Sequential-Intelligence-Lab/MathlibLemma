import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
lemma Graph.IsLink.ne_of_isNonloopAt_right {G : Graph α β}
    (h : G.IsLink e x y) (hn : G.IsNonloopAt e y) : x ≠ y := by
  sorry
