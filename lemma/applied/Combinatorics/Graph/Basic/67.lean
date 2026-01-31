import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Graph.IsLoopAt.adj_self {G : Graph α β}
    (h : G.IsLoopAt e x) : G.Adj x x := by
  -- Use the definition of IsLoopAt to find the edge e and its properties
  have h' := h
  rw [Graph.IsLoopAt] at h'
  -- Apply the definition of adjacency in the graph
  apply h'.adj
  -- Simplify the expression to show that x is adjacent to itself
  <;> simp_all