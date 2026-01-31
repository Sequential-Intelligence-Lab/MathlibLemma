import Mathlib

/-
Brainstormed lemmas related to multiplicative characters, their interaction with units,
ring homs, quadratic characters, sums, orders, etc. All are intentionally left as `sorry`.
-/

variable {R S R' R'' M α β γ ι : Type*}

open scoped BigOperators

namespace MulChar

/-- Dummy declaration for `compMonoidHom` so that the lemma below typechecks.
    We do not provide any implementation or proof, only a `by sorry`. -/
noncomputable def compMonoidHom
    {R : Type*} [CommMonoid R]
    {S : Type*} [CommMonoid S]
    {R' : Type*} [CommMonoidWithZero R']
    (χ : MulChar S R') (f : R →* S)
    (h : True := True.intro) :
    MulChar R R' :=
by
  -- no implementation needed for this stub
  sorry

end MulChar

/-- The pullback of a multiplicative character along a surjective monoid hom is determined by
    the original character. -/
lemma MulChar.compMonoidHom_eq_iff
    {R : Type*} [CommMonoid R]
    {S : Type*} [CommMonoid S]
    {R' : Type*} [CommMonoidWithZero R']
    {f : R →* S} (hf : Function.Surjective f)
    {χ χ' : MulChar S R'} :
    (MulChar.compMonoidHom χ f) = (MulChar.compMonoidHom χ' f) ↔ χ = χ' := by
  -- proof intentionally omitted
  sorry