import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Graph.card_incidenceSet_pos_iff {G : Graph α β} (x : α)
    [Fintype ↥(G.incidenceSet x)] :
    0 < Fintype.card (↥(G.incidenceSet x)) ↔
      (G.incidenceSet x).Nonempty := by
  have h_card_pos_iff : 0 < Fintype.card (↥(G.incidenceSet x)) ↔ Nonempty (↥(G.incidenceSet x)) := by
    apply Fintype.card_pos_iff
    <;> simp
  
  have h_nonempty_iff : Nonempty (↥(G.incidenceSet x)) ↔ (G.incidenceSet x).Nonempty := by
    constructor
    · -- Prove the forward direction: Nonempty (↥(G.incidenceSet x)) → (G.incidenceSet x).Nonempty
      intro h
      -- If there is an element in the subtype, then there is an element in the set
      obtain ⟨⟨y, hy⟩⟩ := h
      exact ⟨y, hy⟩
    · -- Prove the backward direction: (G.incidenceSet x).Nonempty → Nonempty (↥(G.incidenceSet x))
      intro h
      -- If there is an element in the set, then there is an element in the subtype
      obtain ⟨y, hy⟩ := h
      exact ⟨⟨y, hy⟩⟩
  
  have h_main : 0 < Fintype.card (↥(G.incidenceSet x)) ↔ (G.incidenceSet x).Nonempty := by
    rw [h_card_pos_iff]
    rw [h_nonempty_iff]
  
  exact h_main