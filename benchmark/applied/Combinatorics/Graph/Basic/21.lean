import Mathlib

variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set

lemma Graph.isLink_of_adj' {G : Graph α β}
    (h : G.Adj x y) :
    ∃ e : β, G.IsLink e x y := by
  sorry