import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma toRight_biUnion {α β γ} [DecidableEq γ] [DecidableEq β] [DecidableEq (α ⊕ β)]
    (s : Finset γ) (f : γ → Finset (α ⊕ β)) :
    (s.biUnion f).toRight = s.biUnion (fun i => (f i).toRight) := by
  ext
  constructor <;> simp (config := { contextual := true }) [Finset.mem_biUnion, Finset.mem_toRight]
  <;> aesop