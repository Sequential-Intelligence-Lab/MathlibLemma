import Mathlib

variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set

lemma Graph.card_incidenceSet_eq_zero_iff {G : Graph α β} (x : α)
    [Fintype (↥(G.incidenceSet x))] :
    Fintype.card (↥(G.incidenceSet x)) = 0 ↔
      G.incidenceSet x = (∅ : Set β) := by
  classical
  -- First, use the general lemma relating `card = 0` and `IsEmpty`.
  have h₁ : Fintype.card (↥(G.incidenceSet x)) = 0 ↔ IsEmpty (↥(G.incidenceSet x)) :=
    Fintype.card_eq_zero_iff
  -- Now, show that `IsEmpty` of the subtype corresponds to the set being empty.
  have h₂ : IsEmpty (↥(G.incidenceSet x)) ↔ G.incidenceSet x = (∅ : Set β) := by
    constructor
    · intro hI
      -- Show the set has no elements.
      ext e
      constructor
      · intro he
        -- `⟨e, he⟩` is an element of the subtype, contradicting `IsEmpty`.
        exact (hI.false ⟨e, he⟩).elim
      · intro hmem
        -- `hmem : e ∈ (∅ : Set β)` is impossible.
        exact (not_mem_empty e hmem).elim
    · intro hE
      -- If the set is empty, the subtype is `IsEmpty`.
      refine ⟨?_⟩
      intro e
      -- `e : ↥(G.incidenceSet x)` has `e.property : e.1 ∈ G.incidenceSet x`,
      -- but this equals `∅`, contradiction.
      have : (e.1 : β) ∈ (∅ : Set β) := by
        simpa [hE] using e.property
      exact (not_mem_empty e.1 this).elim
  -- Combine the two equivalences.
  exact (h₁.trans h₂)