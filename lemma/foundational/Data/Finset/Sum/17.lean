import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma disjSum_image_inr {α β} [DecidableEq (α ⊕ β)] (s : Finset α) (t : Finset β) :
    s.disjSum t = (s.image Sum.inl) ∪ (t.image Sum.inr) := by
  ext x
  constructor <;> simp (config := { contextual := true }) [Finset.mem_disjSum, Finset.mem_image,
    Finset.mem_union]
  <;> aesop