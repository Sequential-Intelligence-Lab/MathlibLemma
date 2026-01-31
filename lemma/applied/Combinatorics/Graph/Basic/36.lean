import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Graph.edgeSet_subset_univ {G : Graph α β} :
    G.edgeSet ⊆ (Set.univ : Set β) := by
  -- Introduce an arbitrary element `e` from the edge set of the graph.
  intro e
  -- Assume `e` is an element of the edge set of the graph.
  intro e_in_edgeSet
  -- Since `e` is an element of the edge set, it must be an element of the universal set.
  exact Set.mem_univ e