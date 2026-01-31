import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Graph.adj_iff_exists_isNonloopAt {G : Graph α β} :
    G.Adj x y ↔ ∃ e, G.IsLink e x y := by
  -- Construct the equivalence by proving both directions.
  constructor <;> intro h
  -- Forward direction: If x and y are adjacent, then there exists an edge e that is a link connecting x and y.
  <;> obtain ⟨e, he⟩ := h
  -- Use the definition of adjacency to find the edge e and prove it is a link.
  <;> exact ⟨e, he⟩
  -- Reverse direction: If there exists an edge e that is a link connecting x and y, then x and y are adjacent.
  <;> simp_all [Graph.Adj]
  -- Use the definition of adjacency to conclude the proof.
  <;> aesop