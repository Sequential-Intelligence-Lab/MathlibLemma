import Mathlib

/-
Brainstormed lemmas related to multiplicative characters, their interaction with units,
ring homs, quadratic characters, sums, orders, etc. All are intentionally left as `sorry`.
-/

/-- A multiplicative character on a domain is either zero or has no zero-divisors in its image
    among units. -/
lemma MulChar.noZeroDivisors_image_units
    {R : Type*} [CommMonoidWithZero R]
    {R' : Type*} [CommRing R'] [IsDomain R']
    (χ : MulChar R R') :
    ¬ (∃ u v : Rˣ, χ u * χ v = 0 ∧ χ u ≠ 0 ∧ χ v ≠ 0) := by
  sorry