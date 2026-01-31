import Mathlib


/-
Brainstormed lemmas related to multiplicative characters, their interaction with units,
ring homs, quadratic characters, sums, orders, etc. All are intentionally left as `sorry`.
-/

variable {R S R' R'' M α β γ ι : Type*}

open scoped BigOperators
/-- For a fixed domain and codomain, the set of all multiplicative characters is closed under
    pointwise multiplication and inversion. -/
lemma MulChar.isClosedUnder_mul_inv
    {R : Type*} [CommMonoid R]
    {R' : Type*} [CommMonoidWithZero R'] :
    (∀ χ ψ : MulChar R R', ∃ ζ, ζ = χ * ψ) ∧
    (∀ χ : MulChar R R', ∃ ζ, ζ = χ⁻¹) := by
  sorry
