import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma toLeft_biUnion {α β γ}
    [DecidableEq α] [DecidableEq β] [DecidableEq γ] [DecidableEq (α ⊕ β)]
    (s : Finset γ) (f : γ → Finset (α ⊕ β)) :
    (s.biUnion f).toLeft = s.biUnion (fun i => (f i).toLeft) := by
  ext
  constructor <;> simp (config := { contextual := true }) [Finset.mem_biUnion, Finset.mem_toLeft]
  <;> aesop