import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma groupHomology.cyclesMap_zero_hom
    {k : Type u} [CommRing k]
    {G : Type u} [Group G]
    {H : Type u} [Group H]
    {A : Rep k G} {B : Rep k H}
    (f : G →* H) (n : ℕ) :
    groupHomology.cyclesMap f (0 : A ⟶ (Action.res _ f).obj B) n = 0 := by
  -- Use the fact that the zero map induces the zero map on homology.
  simp [groupHomology.cyclesMap]
  -- The `simp` tactic simplifies the expression, leveraging the definition of `cyclesMap`
  -- and the fact that the zero map induces zero on homology.
  <;> aesop