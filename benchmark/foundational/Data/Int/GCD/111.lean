import Mathlib

lemma exists_mul_emod_eq_one_of_coprime' {k n : ℕ} (hkn : Nat.Coprime n k) (hk : 1 < k) :
    ∃ m : ℤ, (n : ℤ) * m % k = 1 := by
  sorry
