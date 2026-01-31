import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma groupHomology.chainsMap_zero_right
    {k G : Type u} [CommRing k] [Group G]
    (A B : Rep k G) :
    groupHomology.chainsMap (MonoidHom.id G) (0 : A ⟶ B) = 0 := by
  -- Use the ext lemma to show that the maps are equal by showing they are equal on all inputs.
  ext n
  -- Use the fact that the zero map is the same as the zero element in the module.
  rw [show (0 : A ⟶ B) = 0 by rfl]
  -- Simplify the expression using the properties of the chainsMap and the zero map.
  simp [groupHomology.chainsMap, Nat.zero_eq]