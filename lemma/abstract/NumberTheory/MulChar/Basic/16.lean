import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma MulChar.toUnitHom_injective
    {R : Type*} [CommMonoid R]
    {R' : Type*} [CommMonoidWithZero R'] :
    Function.Injective (MulChar.toUnitHom (R := R) (R' := R')) := by
  -- Assume two multiplicative characters χ and ψ such that their unit homomorphisms are equal.
  intro χ ψ h
  -- Since χ and ψ are multiplicative characters, their equality as unit homomorphisms implies they are equal as multiplicative characters.
  congr 1
  -- The equality of their unit homomorphisms implies the equality of the multiplicative characters.
  ext1
  simp_all