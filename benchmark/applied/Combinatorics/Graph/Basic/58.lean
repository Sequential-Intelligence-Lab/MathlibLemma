import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
lemma Graph.loopSet_eq_empty_of_no_loops {G : Graph α β} (x : α)
    (h : ∀ e, ¬ G.IsLoopAt e x) :
    G.loopSet x = (∅ : Set β) := by
  sorry
