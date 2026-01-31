import Mathlib

lemma Int.gcdA_unique (x y a : ℤ) :
    (Int.gcd x y : ℤ) = x * a + y * Int.gcdB x y → a ≡ Int.gcdA x y [ZMOD (y / Int.gcd x y)] := by
  sorry
