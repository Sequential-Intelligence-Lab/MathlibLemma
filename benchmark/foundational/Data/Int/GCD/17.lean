import Mathlib

lemma Nat.gcdB_coprime (x y : ℕ) (h : Nat.Coprime x y) :
    y * Nat.gcdB x y ≡ 1 [ZMOD x] := by
  sorry
