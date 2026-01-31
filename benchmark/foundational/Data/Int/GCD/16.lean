import Mathlib

lemma Nat.gcdA_coprime (x y : ℕ) (h : Nat.Coprime x y) :
    x * Nat.gcdA x y ≡ 1 [ZMOD y] := by
  sorry
