import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma disjSum_image_sumComm {α β} (s : Finset α) (t : Finset β) :
    (s.disjSum t).map (Equiv.sumComm _ _).toEmbedding =
      t.disjSum s := by
  ext
  -- Use the extensionality principle to show that the images are equal by considering each element.
  simp [Equiv.sumComm_apply, Finset.mem_disjSum, Finset.mem_map]
  -- Simplify the expressions using the definition of sumComm and the membership conditions for disjSum and map.
  <;> aesop