import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
-- Basic incidence / adjacency variations

lemma Graph.IsLink.ne_of_isNonloopAt_left {G : Graph α β}
    (h : G.IsLink e x y) (hn : G.IsNonloopAt e x) : x ≠ y := by
  sorry
