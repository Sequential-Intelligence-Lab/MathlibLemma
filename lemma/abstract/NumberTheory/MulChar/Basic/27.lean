import Mathlib


/-
Brainstormed lemmas related to multiplicative characters, their interaction with units,
ring homs, quadratic characters, sums, orders, etc. All are intentionally left as `sorry`.
-/

variable {R S R' R'' M α β γ ι : Type*}

open scoped BigOperators

/-- The sum of the trivial `MulChar` over units equals the cardinality. -/
lemma MulChar.sum_units_one_eq_card
    {R : Type*} [CommMonoidWithZero R] [Fintype Rˣ]
    {R' : Type*} [CommRing R'] :
    (∑ u : Rˣ, (1 : MulChar R R') u) = Fintype.card Rˣ := by
  classical
  -- `simp` turns the trivial character into `1`,
  -- then `Finset.sum_const` and `nsmul_one` evaluate the sum.
  simpa [Finset.sum_const, nsmul_one]