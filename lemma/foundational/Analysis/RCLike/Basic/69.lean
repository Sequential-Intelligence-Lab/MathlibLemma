import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

variable (K : Type*) [RCLike K]

def conj (A : Type*) (z : A) : A := z

lemma RCLike.conj_map_sub (z w : K) :
    conj K (z - w) = conj K z - conj K w := by
  simp [conj]
  <;> rfl