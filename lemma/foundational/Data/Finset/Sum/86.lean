import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma toRight_range_inr {β} :
    ((∅ : Finset (PUnit ⊕ β))).toRight = (∅ : Finset β) := by
  -- Use the property that mapping over an empty set results in an empty set.
  simp [Finset.toRight, Finset.map_empty]
  -- Since the input set is empty, the output set after mapping is also empty.
  <;> simp
  <;> aesop