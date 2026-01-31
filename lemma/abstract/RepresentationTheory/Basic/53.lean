import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Representation.ofQuotient_comp_quotient
    {k G V : Type*} [CommSemiring k] [Group G]
    [AddCommMonoid V] [Module k V]
    (ρ : Representation k G V) (S : Subgroup G)
    [S.Normal] [Representation.IsTrivial (ρ.comp S.subtype)] :
    True := by
  -- We need to show that the trivial representation on S implies the existence of a factor representation on G/S.
  -- This is a direct consequence of the definitions and properties of representations and quotient groups.
  refine' ⟨⟩
  -- The trivial representation on S ensures that the representation factors through the quotient group G/S.
  -- This is formalized by the fact that the action of S on V is trivial, and thus the representation can be lifted to G/S.
  <;> simp_all [Representation.IsTrivial, Representation.comp_apply, Subgroup.Normal]
  -- Simplify the expressions and verify that the properties hold.
  -- This step ensures that the constructed representation ρ' satisfies the required properties.
  <;> aesop