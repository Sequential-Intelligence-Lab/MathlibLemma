import Mathlib


/-
Brainstormed lemmas related to multiplicative characters, their interaction with units,
ring homs, quadratic characters, sums, orders, etc. All are intentionally left as `sorry`.
-/

variable {R S R' R'' M α β γ ι : Type*}

open scoped BigOperators
/-- The sum over the unit group of a nontrivial `MulChar` is zero. -/
lemma MulChar.sum_units_eq_zero_of_ne_one
    {R : Type*} [CommMonoidWithZero R] [Fintype Rˣ]
    {R' : Type*} [CommRing R'] [IsDomain R']
    (χ : MulChar R R') (hχ : χ ≠ 1) :
    ∑ u : Rˣ, χ u = 0 := by
  sorry
