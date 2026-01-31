import Mathlib

lemma Nat.exists_gcdA_eq_one_of_coprime (x y : ℕ) (h : Nat.Coprime x y) :
    ∃ a, x * a + y * Nat.gcdB x y = 1 := by
  sorry
