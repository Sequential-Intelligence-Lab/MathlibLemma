import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
lemma Graph.loopSet_eq_empty_iff {G : Graph α β} (x : α) :
    G.loopSet x = (∅ : Set β) ↔
      ∀ e, ¬ G.IsLoopAt e x := by
  sorry
