import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
lemma Graph.IsLink.ends_eq_iff {G : Graph α β}
    (h : G.IsLink e x y) (h' : G.IsLink e z w) :
    (x = z ∧ y = w) ∨ (x = w ∧ y = z) := by
  sorry
