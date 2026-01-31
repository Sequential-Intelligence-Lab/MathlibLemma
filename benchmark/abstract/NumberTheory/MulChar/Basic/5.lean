import Mathlib

/-
Brainstormed lemmas related to multiplicative characters, their interaction with units,
ring homs, quadratic characters, sums, orders, etc. All are intentionally left as `sorry`.
-/

variable {R S R' R'' M α β γ ι : Type*}

open scoped BigOperators

/-- If a `MulChar` is trivial on the powers of an element which generates `R`, it is trivial.

Here "generates" is encoded by `∀ r : R, ∃ n : ℤ, r = x ^ n`, instead of using a non-existent
`IsCyclic.generator` or `IsCyclic.IsGenerator`.
-/
lemma MulChar.eq_one_of_eq_one_on_powers_generator
    {R : Type*} [CommGroup R] [IsCyclic R]
    {R' : Type*} [CommMonoidWithZero R']
    (χ : MulChar R R')
    (x : R)
    (hx : ∀ r : R, ∃ n : ℤ, r = x ^ n)
    (hpow : ∀ n : ℤ, χ (x ^ n) = 1) :
    χ = 1 := by
  sorry