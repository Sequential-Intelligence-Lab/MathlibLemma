import Mathlib


/-
Brainstormed lemmas related to multiplicative characters, their interaction with units,
ring homs, quadratic characters, sums, orders, etc. All are intentionally left as `sorry`.
-/

variable {R S R' R'' M α β γ ι : Type*}

open scoped BigOperators
/-- Restricting a nontrivial character on a field to nonzero elements remains nontrivial. -/
lemma MulChar.ne_one_on_subtype_ne_zero
    {K : Type*} [Field K] [Fintype K]
    {R' : Type*} [CommRing R'] [IsDomain R']
    (χ : MulChar K R') (hχ : χ ≠ 1) :
    ∃ a : {x : K // x ≠ 0}, χ a ≠ 1 := by
  sorry
