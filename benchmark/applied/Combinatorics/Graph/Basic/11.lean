import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
lemma Graph.incidences_unique_pair {G : Graph α β}
    (h₁ : G.IsLink e x y) (hx : G.Inc e x) (hz : G.Inc e z) :
    z = x ∨ z = y := by
  sorry
