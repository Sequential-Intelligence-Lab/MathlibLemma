import Mathlib

/-
Brainstormed lemmas related to multiplicative characters, their interaction with units,
ring homs, quadratic characters, sums, orders, etc. All are intentionally left as `sorry`.
-/

variable {R S R' R'' M α β γ ι : Type*}

open scoped BigOperators

/-- For characters into a commutative monoid with zero, the set of elements sent to `1`
is closed under multiplication. (This is just a bundled version of multiplicativity.) -/
lemma MulChar.preimage_one_submonoid
    {R : Type*} [CommMonoid R] {R' : Type*} [CommMonoidWithZero R']
    (χ : MulChar R R') :
    ∀ a b, χ a = 1 → χ b = 1 → χ (a * b) = 1 := by
  sorry