import Mathlib

variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set

lemma Graph.IsLink.not_isLink_of_not_edge_mem {α β : Type*} {G : Graph α β}
    {e : β} {x y : α}
    (h : ¬ e ∈ G.edgeSet) (hL : G.IsLink e x y) : False := by
  sorry