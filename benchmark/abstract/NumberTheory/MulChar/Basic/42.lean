import Mathlib


/-
Brainstormed lemmas related to multiplicative characters, their interaction with units,
ring homs, quadratic characters, sums, orders, etc. All are intentionally left as `sorry`.
-/

variable {R S R' R'' M α β γ ι : Type*}

open scoped BigOperators
/-- If `χ` has order `2`, then it is quadratic. -/
lemma MulChar.isQuadratic_of_orderOf_two
    {R : Type*} [CommMonoid R]
    {R' : Type*} [CommRing R']
    (χ : MulChar R R') (h : orderOf χ = 2) :
    χ.IsQuadratic := by
  sorry
