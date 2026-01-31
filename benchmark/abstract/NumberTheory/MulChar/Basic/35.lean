import Mathlib

/-
Brainstormed lemmas related to multiplicative characters, their interaction with units,
ring homs, quadratic characters, sums, orders, etc. All are intentionally left as `sorry`.
-/

variable {R S R' R'' M α β γ ι : Type*}

open scoped BigOperators

-- Provide a `Fintype` instance for the subtype of nonzero elements of a finite field.
noncomputable instance fintypeSubtypeNeZero
    {K : Type*} [Field K] [Fintype K] :
    Fintype {x : K // x ≠ 0} :=
  Fintype.ofFinite _

/-- Character sum over nonzero elements of a field for a nontrivial character is zero. -/
lemma MulChar.sum_nonzero_eq_zero_of_ne_one
    {K : Type*} [Field K] [Fintype K]
    {R' : Type*} [CommRing R'] [IsDomain R']
    (χ : MulChar K R') (hχ : χ ≠ 1) :
    ∑ a : {x : K // x ≠ 0}, χ a = 0 := by
  sorry