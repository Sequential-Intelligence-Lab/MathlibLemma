import Mathlib

lemma Int.exists_gcdB_eq_one_of_coprime (x y : ℤ) (h : Int.gcd x y = 1) :
    ∃ b, x * Int.gcdA x y + y * b = 1 := by
  sorry
