import Mathlib

variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set

lemma Graph.card_loopSet_eq_zero_iff {G : Graph α β} (x : α)
    [Fintype (↥(G.loopSet x))] :
    Fintype.card (↥(G.loopSet x)) = 0 ↔
      G.loopSet x = (∅ : Set β) := by
  constructor
  · -- →: from card = 0 to set = ∅
    intro h
    -- Interpret `card = 0` as `IsEmpty` for the subtype
    have hE : IsEmpty (↥(G.loopSet x)) :=
      (Fintype.card_eq_zero_iff).mp h
    -- Now show the underlying set is empty
    apply Set.eq_empty_iff_forall_notMem.mpr
    intro e he
    -- `⟨e, he⟩` would be an element of the subtype, contradicting `IsEmpty`
    exact hE.false ⟨e, he⟩
  · -- ←: from set = ∅ to card = 0
    intro hEmpty
    -- From `loopSet x = ∅` we get `IsEmpty` on the subtype
    have hE : IsEmpty (↥(G.loopSet x)) := by
      refine ⟨?_⟩
      intro a
      rcases a with ⟨e, he⟩
      -- Using the equality of sets, membership in `loopSet x` is impossible
      have : e ∈ (∅ : Set β) := by
        simpa [hEmpty] using he
      exact this.elim
    -- Convert `IsEmpty` back to `card = 0`
    exact (Fintype.card_eq_zero_iff).mpr hE