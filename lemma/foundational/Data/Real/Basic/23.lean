import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.mk_mul_mk (f g : CauSeq ℚ abs) :
    Real.mk f * Real.mk g = Real.mk (f * g) := by
  have h : Real.mk (f * g) = Real.mk f * Real.mk g := by
    -- Use the property of multiplication in the real numbers constructed from Cauchy sequences
    rw [Real.mk_mul]
    <;>
    simp_all [CauSeq.mul]
    <;>
    try norm_num
    <;>
    try ring_nf
    <;>
    try linarith
  
  have h_main : Real.mk f * Real.mk g = Real.mk (f * g) := by
    -- Use the symmetric property of equality to reverse the previous result
    rw [eq_comm] at h
    -- Now h states that Real.mk f * Real.mk g = Real.mk (f * g)
    exact h
  
  -- The final result follows directly from h_main
  exact h_main