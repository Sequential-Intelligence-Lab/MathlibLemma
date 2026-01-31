import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma disjSum_image_inl {α β} [DecidableEq (α ⊕ β)] (s : Finset α) (t : Finset β) :
    (s.image Sum.inl) ∪ (t.image Sum.inr) = s.disjSum t := by
  ext
  constructor <;> simp (config := { contextual := true }) [Finset.mem_union, Finset.mem_image,
    Finset.mem_disjSum]
  <;> aesop
  <;> split_ifs <;> aesop
  <;> aesop
  <;> split_ifs <;> aesop
  <;> aesop
  <;> split_ifs <;> aesop
  <;> aesop