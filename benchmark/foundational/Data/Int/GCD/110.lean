import Mathlib

lemma exists_mul_emod_eq_gcd' {k n : ℕ} (hk : Nat.gcd n k < k) :
    ∃ m : ℤ, (n : ℤ) * m % k = Nat.gcd n k := by
  sorry
