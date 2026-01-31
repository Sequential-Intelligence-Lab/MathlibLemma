import Mathlib

lemma Int.gcdB_coprime (x y : ℤ) (h : Int.gcd x y = 1) :
    y * Int.gcdB x y ≡ 1 [ZMOD x] := by
  sorry
