import Mathlib

lemma pow_eq_pow_of_pow_gcd_eq_one {M : Type*} [Monoid M] {x : M} {m n : ℕ}
    (h : x ^ Nat.gcd m n = 1) :
    x ^ m = x ^ n ↔ x ^ (m - n) = 1 := by
  sorry
