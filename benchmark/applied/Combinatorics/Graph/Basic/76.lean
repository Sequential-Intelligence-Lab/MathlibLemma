import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
lemma Graph.IsLink.comp_edgeMap {G : Graph α β}
    (g : β → γ) {e : β} {x y : α}
    (h : G.IsLink e x y) :
    ∃ e', e' = g e ∧ G.IsLink e x y := by
  sorry
