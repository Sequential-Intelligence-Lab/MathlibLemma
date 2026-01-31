import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
lemma Graph.incidenceSet_diff_loopSet_eq_nonloops {G : Graph α β} (x : α) :
    G.incidenceSet x \ G.loopSet x =
      {e | G.IsNonloopAt e x} := by
  sorry
