import Mathlib


/-
Brainstormed lemmas related to multiplicative characters, their interaction with units,
ring homs, quadratic characters, sums, orders, etc. All are intentionally left as `sorry`.
-/

variable {R S R' R'' M α β γ ι : Type*}

open scoped BigOperators
/-- A nontrivial `MulChar` has even order if it is quadratic. -/
lemma MulChar.IsQuadratic.orderOf_even
    {R : Type*} [CommMonoid R]
    {R' : Type*} [CommRing R']
    (χ : MulChar R R') (hχ : χ.IsQuadratic) (hχ' : χ ≠ 1) :
    Even (orderOf χ) := by
  sorry
