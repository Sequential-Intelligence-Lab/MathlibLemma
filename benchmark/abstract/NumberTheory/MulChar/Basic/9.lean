import Mathlib


/-
Brainstormed lemmas related to multiplicative characters, their interaction with units,
ring homs, quadratic characters, sums, orders, etc. All are intentionally left as `sorry`.
-/

variable {R S R' R'' M α β γ ι : Type*}

open scoped BigOperators
/-- The order of a `MulChar` divides the cardinality of `Rˣ`. -/
lemma MulChar.orderOf_dvd_card_units
    {R : Type*} [CommMonoid R] [Fintype Rˣ]
    {R' : Type*} [CommMonoidWithZero R'] (χ : MulChar R R') :
    orderOf χ ∣ Fintype.card Rˣ := by
  sorry
