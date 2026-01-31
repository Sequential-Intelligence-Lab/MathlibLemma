import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
lemma Graph.IsLink.eq_of_right_eq {G : Graph α β}
    (h : G.IsLink e x y) (h' : G.IsLink e z y) : x = z := by
  sorry
