import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.rpow_two_mul (x y : ℝ) :
    (x ^ 2) * (y ^ 2) = (x * y) ^ 2 := by
  have h_main : (x ^ 2) * (y ^ 2) = (x * y) ^ 2 := by
    ring_nf
    <;>
    simp [pow_two, mul_assoc, mul_comm, mul_left_comm]
    <;>
    ring
    <;>
    linarith
  
  exact h_main