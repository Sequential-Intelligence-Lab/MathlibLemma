import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
-- Adjacency vs incidence / loops

lemma Graph.adj_iff_exists_isNonloopAt {G : Graph α β} :
    G.Adj x y ↔ ∃ e, G.IsLink e x y := by
  sorry
