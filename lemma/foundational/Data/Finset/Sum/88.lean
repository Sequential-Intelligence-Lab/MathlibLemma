import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma disjSum_univ_right {α β} [Fintype β] [DecidableEq α] [DecidableEq β]
    (s : Finset α) :
    s.disjSum (Finset.univ : Finset β) =
      (s.image Sum.inl) ∪ (Finset.univ.image Sum.inr) := by
  ext
  constructor <;> simp (config := { contextual := true }) [Finset.mem_disjSum, Finset.mem_image,
    Finset.mem_univ]
  <;> aesop