import Mathlib


variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set

lemma Graph.incidenceSet_eq_univ_iff {G : Graph α β} (x : α) :
    G.incidenceSet x = (Set.univ : Set β) ↔
      ∀ e, G.Inc e x := by
  constructor
  · intro h e
    -- From the set equality, deduce membership in `G.incidenceSet x`
    have he' : e ∈ G.incidenceSet x := by
      have : e ∈ (Set.univ : Set β) := trivial
      simpa [h] using this
    -- Unfold membership in `incidenceSet` to get `G.Inc e x`
    simpa [Graph.incidenceSet] using he'
  · intro h
    -- Use the standard characterization of `= univ`
    apply Set.eq_univ_iff_forall.mpr
    intro e
    have : G.Inc e x := h e
    -- Turn `G.Inc e x` back into membership in `incidenceSet`
    simpa [Graph.incidenceSet] using this