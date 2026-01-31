import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
lemma Graph.IsLink.sym2_ends_unique {G : Graph α β}
    (h : G.IsLink e x y) (h' : G.IsLink e z w) :
    s(x, y) = s(z, w) ∧ s(z, w) = s(x, y) := by
  sorry
