import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma MulChar.toUnitHom_apply_eq
    {R : Type*} [CommMonoid R]
    {R' : Type*} [CommMonoidWithZero R'] (χ : MulChar R R') (u : Rˣ) :
    χ u = χ.toUnitHom u := by
  -- By definition, the evaluation of the multiplicative character at a unit is the same as the evaluation of its unit homomorphism.
  simp [MulChar.toUnitHom]
  -- The `simp` tactic simplifies the expression using the definition of `toUnitHom`, confirming that `χ u = χ.toUnitHom u`.
  <;> rfl