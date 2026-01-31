import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Nat.exists_gcdA_eq_one_of_coprime (x y : ℕ) (h : Nat.Coprime x y) :
    ∃ a, x * a + y * Nat.gcdB x y = 1 := by
  -- Use the fact that x and y are coprime to apply Bezout's Identity
  use Nat.gcdA x y
  -- Use the property of gcdA and gcdB to show the desired equation
  rw [← Nat.gcd_eq_gcd_ab x y]
  -- Simplify the equation using the properties of gcdA and gcdB
  simp [h, Nat.gcd_eq_right]