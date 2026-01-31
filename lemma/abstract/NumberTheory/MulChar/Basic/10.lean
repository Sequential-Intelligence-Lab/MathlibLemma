import Mathlib


/-
Brainstormed lemmas related to multiplicative characters, their interaction with units,
ring homs, quadratic characters, sums, orders, etc. All are intentionally left as `sorry`.
-/

variable {R S R' R'' M α β γ ι : Type*}

open scoped BigOperators

/-- A nontrivial `MulChar` has even order if it is quadratic. -/
lemma MulChar.IsQuadratic.orderOf_even
    {R : Type*} [CommMonoid R]
    {R' : Type*} [CommRing R']
    (χ : MulChar R R') (hχ : χ.IsQuadratic) (hχ' : χ ≠ 1) :
    Even (orderOf χ) := by
  -- From `IsQuadratic` we know `χ ^ 2 = 1`
  have hpow : χ ^ 2 = 1 := hχ.sq_eq_one
  -- The order of `χ` divides 2
  have h_dvd : orderOf χ ∣ 2 :=
    orderOf_dvd_of_pow_eq_one hpow
  -- Divisors of 2 are 1 or 2
  have h_cases : orderOf χ = 1 ∨ orderOf χ = 2 :=
    (Nat.dvd_prime Nat.prime_two).1 h_dvd
  -- Exclude the case `orderOf χ = 1` using nontriviality
  have horder : orderOf χ = 2 := by
    rcases h_cases with h1 | h2
    · -- If `orderOf χ = 1`, then `χ = 1`, contradiction
      have : χ = 1 := (orderOf_eq_one_iff).1 h1
      exact (hχ' this).elim
    · exact h2
  -- Conclude that `orderOf χ` is even
  simpa [horder] using (even_two : Even (2 : ℕ))