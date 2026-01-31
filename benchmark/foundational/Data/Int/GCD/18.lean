import Mathlib

lemma Nat.gcdA_mod_right (x y : ℕ) :
    Nat.gcdA x (y % x) = Nat.gcdA x y + (y / x) * Nat.gcdB x y := by
  sorry
