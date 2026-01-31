import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.ringEquivCauchy_symm_apply
    (x : CauSeq.Completion.Cauchy (abs : ℚ → ℚ)) :
    Real.ringEquivCauchy.symm x = Real.ofCauchy x := by
  -- Use the property of the ring equivalence that the inverse of the equivalence at x is the same as the ofCauchy function applied to x.
  rw [← Real.ringEquivCauchy.apply_symm_apply x]
  -- Simplify the expression using the fact that the composition of the equivalence and its inverse is the identity.
  simp 
  -- Use the fact that the ofCauchy function maps the Cauchy sequence to its equivalence class in the real numbers.
  <;> rfl