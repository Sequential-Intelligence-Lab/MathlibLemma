import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
lemma Graph.IsLoopAt.of_inc_unique {G : Graph α β}
    (hx : G.Inc e x)
    (huniq : ∀ z, G.Inc e z → z = x) :
    G.IsLoopAt e x := by
  sorry
