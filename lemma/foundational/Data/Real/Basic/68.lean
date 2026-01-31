import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.cauchy_sgn (x : ℝ) :
    (Real.sign x : ℝ) = Real.sign x := by
  -- Consider the three cases for the sign of x: positive, zero, and negative.
  cases' le_total 0 x with h h <;> cases' le_total 0 x with h' h' <;> simp_all [Real.sign]
  <;> norm_num
  <;> linarith