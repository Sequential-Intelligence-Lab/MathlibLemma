import Mathlib

lemma Int.exists_gcdA_eq_one_of_coprime (x y : ℤ) (h : Int.gcd x y = 1) :
    ∃ a, x * a + y * Int.gcdB x y = 1 := by
  sorry
