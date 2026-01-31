import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
lemma Graph.mem_loopSet_iff {G : Graph α β} {x : α} {e : β} :
    e ∈ G.loopSet x ↔ G.IsLoopAt e x := by
  sorry
