import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Graph.card_loopSet_pos_iff {G : Graph α β} (x : α)
    [Fintype ↑(G.loopSet x)] :
    0 < Fintype.card (↥(G.loopSet x)) ↔
      (G.loopSet x).Nonempty := by
  have h₁ : 0 < Fintype.card (↥(G.loopSet x)) ↔ Nonempty (↥(G.loopSet x)) := by
    apply Fintype.card_pos_iff
    <;>
    simp_all [Set.Nonempty]
    <;>
    aesop
  
  have h₂ : Nonempty (↥(G.loopSet x)) ↔ (G.loopSet x).Nonempty := by
    constructor
    · -- Prove the forward direction: if Nonempty (↥(G.loopSet x)), then (G.loopSet x).Nonempty
      intro h
      -- Extract an element from the subtype
      obtain ⟨⟨y, hy⟩⟩ := h
      -- Show that y is in G.loopSet x
      exact ⟨y, hy⟩
    · -- Prove the reverse direction: if (G.loopSet x).Nonempty, then Nonempty (↥(G.loopSet x))
      intro h
      -- Extract an element from the set
      obtain ⟨y, hy⟩ := h
      -- Construct an element of the subtype
      exact ⟨⟨y, hy⟩⟩
  
  have h_main : 0 < Fintype.card (↥(G.loopSet x)) ↔ (G.loopSet x).Nonempty := by
    rw [h₁]
    rw [h₂]
    <;>
    simp_all [Set.Nonempty]
    <;>
    aesop
  
  exact h_main