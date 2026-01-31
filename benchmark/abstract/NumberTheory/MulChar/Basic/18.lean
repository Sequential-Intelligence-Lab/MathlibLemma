import Mathlib


/-
Brainstormed lemmas related to multiplicative characters, their interaction with units,
ring homs, quadratic characters, sums, orders, etc. All are intentionally left as `sorry`.
-/

variable {R S R' R'' M α β γ ι : Type*}

open scoped BigOperators
/-- A quadratic `MulChar` on a ring of characteristic `2` is trivial on units. -/
lemma MulChar.IsQuadratic.trivial_on_units_charTwo
    {R : Type*} [CommRing R] [CharZero R]
    {R' : Type*} [CommRing R'] [CharP R' 2]
    (χ : MulChar R R') (hχ : χ.IsQuadratic) :
    ∀ u : Rˣ, χ u = 1 := by
  sorry
