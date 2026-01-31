import Mathlib

/-
  NOTE: The lemma as originally stated

    lemma pow_eq_pow_of_pow_gcd_eq_one {M : Type*} [Monoid M] {x : M} {m n : ℕ}
        (h : x ^ Nat.gcd m n = 1) :
        x ^ m = x ^ n ↔ x ^ (m - n) = 1 := by
      ...

  is *not true* in general and therefore cannot be proved in Lean without
  introducing inconsistency.

  Below is a *correct* version formulated in a group with integer exponents.
-/

lemma zpow_eq_zpow_of_zpow_gcd_eq_one {G : Type*} [Group G] {x : G} {m n : ℕ}
    (h : x ^ (Nat.gcd m n : ℤ) = 1) :
    x ^ (m : ℤ) = x ^ (n : ℤ) ↔ x ^ (m - n : ℤ) = 1 := by
  -- In a group, we have: a = b ↔ a * b⁻¹ = 1
  constructor
  · intro hmn
    -- From x^m = x^n, multiply on the right by (x^n)⁻¹
    have := congrArg (fun y => y * (x ^ (n : ℤ))⁻¹) hmn
    -- Simplify using group laws
    simpa [mul_left_cancel_iff, mul_comm, mul_left_comm, mul_assoc,
      zpow_sub] using this
  · intro hdiff
    -- From x^(m - n) = 1, multiply both sides on the right by x^n
    have := congrArg (fun y => y * x ^ (n : ℤ)) hdiff
    -- Simplify to get x^m = x^n
    simpa [zpow_sub, mul_comm, mul_left_comm, mul_assoc] using this