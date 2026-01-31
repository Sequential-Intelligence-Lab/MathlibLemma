import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set

lemma Graph.Inc.other_inc {G : Graph α β}
    (h : G.Inc e x) : G.Inc e h.other := by
  simpa using h.symm