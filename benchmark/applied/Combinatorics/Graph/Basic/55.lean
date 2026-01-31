import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
lemma Graph.loopSet_nonempty_iff {G : Graph α β} (x : α) :
    (G.loopSet x).Nonempty ↔ ∃ e, G.IsLoopAt e x := by
  sorry
