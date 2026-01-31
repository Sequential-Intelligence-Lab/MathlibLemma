import Mathlib

lemma Int.gcdA_coprime (x y : ℤ) (h : Int.gcd x y = 1) :
    x * Int.gcdA x y ≡ 1 [ZMOD y] := by
  sorry
