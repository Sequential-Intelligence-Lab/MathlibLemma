import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

def Representation.restrictSubgroup
    {k G V : Type*} [CommSemiring k] [Group G]
    [AddCommMonoid V] [Module k V]
    (ρ : Representation k G V) (H : Subgroup G) :
    Representation k H V := by
  -- We use the restriction of ρ to H, which is a subgroup of G.
  refine' { toFun := fun h => ρ.1 h, map_one' := _, map_mul' := _ }
  -- We need to show that the restriction is a group homomorphism.
  -- First, we verify that it preserves the identity element.
  <;> simp [Subgroup.one_mem]
  -- Next, we verify that it preserves the group operation.
  <;> aesop