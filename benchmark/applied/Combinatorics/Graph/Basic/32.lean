import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
-- Interaction with Sym2 more explicitly

lemma Graph.IsLink.sym2_ends_eq {G : Graph α β}
    (h : G.IsLink e x y) :
    ∀ {x' y'}, G.IsLink e x' y' → s(x, y) = s(x', y') := by
  sorry
