import Mathlib

lemma Nat.exists_gcdA_gcdB_unique (x y : ℕ) :
    ∀ a b, x * a + y * b = Nat.gcd x y →
      a ≡ Nat.gcdA x y [ZMOD y / Nat.gcd x y] ∧
      b ≡ Nat.gcdB x y [ZMOD x / Nat.gcd x y] := by
  sorry
