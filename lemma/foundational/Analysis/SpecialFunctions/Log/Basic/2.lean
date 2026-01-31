import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.log_natCast_mul (m n : ℕ) (hm : m ≠ 0) (hn : n ≠ 0) :
    Real.log (m * n : ℝ) = Real.log (m : ℝ) + Real.log (n : ℝ) := by
  -- Convert the natural numbers m and n to real numbers.
  norm_cast at *
  -- Simplify the expression using the property of logarithms that log(ab) = log(a) + log(b).
  simp [Real.log_mul, hm, hn]
  -- Simplify the expression further using algebraic properties.
  <;> ring
  -- Simplify using the properties of logarithms and the fact that m and n are non-zero.
  <;> simp [Real.log_mul, hm, hn]
  -- Final simplification to achieve the desired result.
  <;> ring