import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set
lemma Graph.incidenceSet_mono_of_vertexSubset {G : Graph α β}
    {x y : α} (hxy : x = y) :
    G.incidenceSet x ⊆ G.incidenceSet y := by
  sorry
