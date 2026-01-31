import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
lemma Graph.not_adj_of_forall_edges_not {G : Graph α β}
    (h : ∀ e, ¬ G.IsLink e x y) :
    ¬ G.Adj x y := by
  sorry
