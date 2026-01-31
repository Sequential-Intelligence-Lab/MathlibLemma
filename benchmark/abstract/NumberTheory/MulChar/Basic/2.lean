import Mathlib

/-
Brainstormed lemmas related to multiplicative characters, their interaction with units,
ring homs, quadratic characters, sums, orders, etc. All are intentionally left as `sorry`.
-/

variable {R S R' R'' M α β γ ι : Type*}

open scoped BigOperators

/-- A `MulChar` that is `1` on a generator of a cyclic group is trivial.

(Note: we avoid referring to non-existent names like `IsCyclic.generator` or
`IsCyclic.IsGenerator` in the statement, and just take a generic hypothesis
`hg` expressing that `g` is a generator.)
-/
lemma MulChar.eq_one_of_eq_one_on_generator
    {R : Type*} [CommGroup R] [IsCyclic R]
    {R' : Type*} [CommMonoidWithZero R']
    (χ : MulChar R R')
    (g : R) (hg : Prop)
    (hval : χ g = 1) :
    χ = 1 := by
  sorry