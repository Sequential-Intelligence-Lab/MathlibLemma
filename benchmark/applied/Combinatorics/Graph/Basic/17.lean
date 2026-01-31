import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
lemma Graph.IsLink.eq_iff_sym2 {G : Graph α β}
    (h : G.IsLink e x y) (h' : G.IsLink e z w) :
    s(x, y) = s(z, w) := by
  sorry
