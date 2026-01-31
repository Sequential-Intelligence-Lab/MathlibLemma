import Mathlib

lemma Int.exists_inv_mod_of_coprime_nat {a n : ℤ} (h : Int.gcd a n = 1) :
    ∃ b : ℤ, a * b ≡ 1 [ZMOD n] := by
  sorry
