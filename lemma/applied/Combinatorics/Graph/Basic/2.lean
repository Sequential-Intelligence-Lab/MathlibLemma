import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Graph.isNonloopAt_of_isLink_ne {G : Graph α β}
    (h : G.IsLink e x y) (hxy : x ≠ y) : G.IsNonloopAt e x := by
  -- Use the definition of IsNonloopAt, which states that an edge is a non-loop at a vertex if it does not connect the vertex to itself.
  rw [Graph.IsNonloopAt]
  -- Apply the definition of IsLink, which states that an edge is a link between two vertices if it connects them and they are distinct.
  have h_link := h
  rw [Graph.IsLink] at h_link
  -- Since x ≠ y, the edge e cannot connect x to itself, hence it is a non-loop at x.
  simp_all 
  -- Use Aesop to handle any remaining logical implications and conclude the proof.
  <;> aesop