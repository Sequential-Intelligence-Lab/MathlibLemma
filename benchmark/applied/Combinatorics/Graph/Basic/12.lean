import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
lemma Graph.IsLink.ne_left_of_right_ne {G : Graph α β}
    (h : G.IsLink e x y) (h' : G.IsLink e z y) (hxy : x ≠ z) :
    False := by
  sorry
