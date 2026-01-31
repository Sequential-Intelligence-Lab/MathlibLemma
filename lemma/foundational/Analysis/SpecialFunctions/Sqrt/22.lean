import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_pow (x : ℝ) (n : ℕ) (hx : 0 ≤ x) :
    √(x ^ (2 * n)) = x ^ n := by
  -- Apply the theorem that if two numbers have the same square root, they are equal.
  apply Eq.symm
  -- Rewrite the square root as an exponent.
  rw [← Real.sqrt_sq (show 0 ≤ x ^ n by positivity)]
  -- Simplify the expression using properties of exponents.
  simp [pow_mul, mul_comm, mul_assoc, mul_left_comm]