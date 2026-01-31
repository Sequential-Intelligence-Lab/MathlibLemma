import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
lemma Graph.loopSet_eq_incidenceSet_of_all_loops {G : Graph α β} (x : α)
    (h : ∀ e, G.Inc e x → G.IsLoopAt e x) :
    G.loopSet x = G.incidenceSet x := by
  sorry
