import Mathlib


/-
Brainstormed lemmas related to multiplicative characters, their interaction with units,
ring homs, quadratic characters, sums, orders, etc. All are intentionally left as `sorry`.
-/

variable {R S R' R'' M α β γ ι : Type*}

open scoped BigOperators
/-- The evaluation of a multiplicative character at a unit depends only on the value of its
    unit hom. -/
lemma MulChar.toUnitHom_apply_eq
    {R : Type*} [CommMonoid R]
    {R' : Type*} [CommMonoidWithZero R'] (χ : MulChar R R') (u : Rˣ) :
    χ u = χ.toUnitHom u := by
  sorry
