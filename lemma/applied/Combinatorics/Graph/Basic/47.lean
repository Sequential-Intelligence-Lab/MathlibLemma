import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set

lemma Graph.incidenceSet_eq_empty_iff {G : Graph α β} (x : α) :
    G.incidenceSet x = (∅ : Set β) ↔
      ∀ e, ¬ G.Inc e x := by
  constructor
  · intro h
    -- Use the standard characterization of an empty set
    -- and rewrite membership in the incidence set.
    simpa [Graph.incidenceSet] using
      (Set.eq_empty_iff_forall_not_mem.mp h)
  · intro h
    -- Turn the ∀-condition back into a set equality.
    apply Set.eq_empty_iff_forall_not_mem.mpr
    simpa [Graph.incidenceSet] using h