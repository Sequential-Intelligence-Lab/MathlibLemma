import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma log_coeNNReal (x : NNReal) :
    Real.log (x : ℝ) = Real.log (x : ℝ) := by
  -- Use the congruence tactic to show that the two expressions are equal.
  congr
  -- The two expressions are identical, so no further proof is needed.
  <;> rfl