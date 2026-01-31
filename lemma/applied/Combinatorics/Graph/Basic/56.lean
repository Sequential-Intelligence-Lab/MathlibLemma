import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Graph.mem_loopSet_iff {G : Graph α β} {x : α} {e : β} :
    e ∈ G.loopSet x ↔ G.IsLoopAt e x := by
  -- Simplify the membership in the loop set to the definition of IsLoopAt
  simp [Graph.mem_loopSet]
  -- The proof is complete by the definition of loopSet and IsLoopAt
  <;> done