import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Graph.card_edgeSet_pos_iff {α β : Type*} (G : Graph α β)
    [Fintype G.edgeSet] :
    0 < Fintype.card (G.edgeSet) ↔ (G.edgeSet).Nonempty := by
  have h_main : 0 < Fintype.card (G.edgeSet) ↔ Nonempty (G.edgeSet) := by
    apply Fintype.card_pos_iff
    <;>
    simp_all [Set.Nonempty]
    <;>
    aesop
  
  have h_final : 0 < Fintype.card (G.edgeSet) ↔ (G.edgeSet).Nonempty := by
    simpa [Set.Nonempty] using h_main
  
  exact h_final