import Mathlib


/-
Brainstormed lemmas related to multiplicative characters, their interaction with units,
ring homs, quadratic characters, sums, orders, etc. All are intentionally left as `sorry`.
-/

variable {R S R' R'' M α β γ ι : Type*}

open scoped BigOperators
/-- If two `MulChar`s agree on `Rˣ`, then they also agree on all powers of units. -/
lemma MulChar.eq_on_powers_of_units {R : Type*} [CommMonoidWithZero R]
    {R' : Type*} [CommMonoidWithZero R'] {χ χ' : MulChar R R'}
    (h : ∀ u : Rˣ, χ u = χ' u) (u : Rˣ) (n : ℕ) :
    χ (u ^ n : Rˣ) = χ' (u ^ n : Rˣ) := by
  sorry
