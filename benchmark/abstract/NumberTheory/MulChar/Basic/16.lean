import Mathlib


/-
Brainstormed lemmas related to multiplicative characters, their interaction with units,
ring homs, quadratic characters, sums, orders, etc. All are intentionally left as `sorry`.
-/

variable {R S R' R'' M α β γ ι : Type*}

open scoped BigOperators
/-- Injectivity of `MulChar.toUnitHom` as a map from `MulChar` to `Rˣ →* R'ˣ`. -/
lemma MulChar.toUnitHom_injective
    {R : Type*} [CommMonoid R]
    {R' : Type*} [CommMonoidWithZero R'] :
    Function.Injective (MulChar.toUnitHom (R := R) (R' := R')) := by
  sorry
