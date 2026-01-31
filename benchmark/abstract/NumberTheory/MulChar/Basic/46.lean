import Mathlib


/-
Brainstormed lemmas related to multiplicative characters, their interaction with units,
ring homs, quadratic characters, sums, orders, etc. All are intentionally left as `sorry`.
-/

variable {R S R' R'' M α β γ ι : Type*}

open scoped BigOperators
/-- The support of a quadratic character is stable under inversion. -/
lemma MulChar.IsQuadratic.support_inv_closed
    {R : Type*} [CommGroup R]
    {R' : Type*} [CommRing R']
    (χ : MulChar R R') (hχ : χ.IsQuadratic) :
    ∀ a, χ a ≠ 0 → χ a⁻¹ ≠ 0 := by
  sorry
