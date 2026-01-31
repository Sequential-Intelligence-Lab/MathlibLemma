import Mathlib


/-
Brainstormed lemmas related to multiplicative characters, their interaction with units,
ring homs, quadratic characters, sums, orders, etc. All are intentionally left as `sorry`.
-/

variable {R S R' R'' M α β γ ι : Type*}

open scoped BigOperators
/-- A character is uniquely determined by its composition with an injective ring hom. -/
lemma MulChar.ringHomComp_injective'
    {R : Type*} [CommMonoid R]
    {R' : Type*} [CommRing R'] {R'' : Type*} [CommRing R'']
    {f : R' →+* R''} (hf : Function.Injective f) :
    Function.Injective fun (χ : MulChar R R') => χ.ringHomComp f := by
  sorry
