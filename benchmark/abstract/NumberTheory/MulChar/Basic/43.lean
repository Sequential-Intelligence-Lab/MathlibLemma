import Mathlib


/-
Brainstormed lemmas related to multiplicative characters, their interaction with units,
ring homs, quadratic characters, sums, orders, etc. All are intentionally left as `sorry`.
-/

variable {R S R' R'' M α β γ ι : Type*}

open scoped BigOperators
/-- If `χ` is quadratic and not trivial, then its order is exactly 2. -/
lemma MulChar.orderOf_eq_two_of_isQuadratic_ne_one
    {R : Type*} [CommMonoid R]
    {R' : Type*} [CommRing R']
    (χ : MulChar R R') (hχ : χ.IsQuadratic) (hχ' : χ ≠ 1) :
    orderOf χ = 2 := by
  sorry

/-- Quadratic characters form a subgroup of the character group. -/
def MulChar.quadraticSubgroup
    {R : Type*} [CommMonoid R]
    {R' : Type*} [CommRing R'] :
    Subgroup (MulChar R R') := by
  classical
  refine
    { carrier := {χ : MulChar R R' | χ.IsQuadratic}
      one_mem' := ?_
      mul_mem' := ?_
      inv_mem' := ?_ }
  · sorry
  · sorry
  · sorry

/-- Postcomposition with a ring hom sends quadratic characters to quadratic characters and
    thus restricts to a group hom between quadratic subgroups. -/
noncomputable
def MulChar.quadraticSubgroup_ringHomComp
    {R : Type*} [CommMonoid R]
    {R' : Type*} [CommRing R'] {R'' : Type*} [CommRing R'']
    (f : R' →+* R'') :
    (MulChar.quadraticSubgroup (R := R) (R' := R')) →*
      (MulChar.quadraticSubgroup (R := R) (R' := R'')) := by
  classical
  refine
    { toFun := ?_
      map_one' := ?_
      map_mul' := ?_ }
  · sorry
  · sorry
  · sorry
