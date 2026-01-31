import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Finset.univ_sum_univ
    {α β : Type*} [Fintype α] [Fintype β] [DecidableEq α] [DecidableEq β] :
    (Finset.univ : Finset (α ⊕ β)) =
      ((Finset.univ.image Sum.inl) ∪ (Finset.univ.image Sum.inr)) := by
  ext x
  -- We will show that each element of the universal set is in the union of the images,
  -- and vice versa.
  constructor <;> cases x <;> simp_all [Finset.mem_union, Finset.mem_image]
  -- For each case (Left or Right), we check membership in the union of images.
  <;> aesop