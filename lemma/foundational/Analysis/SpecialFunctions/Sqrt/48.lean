import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma measurable_sqrt :
    Measurable Real.sqrt := by
  -- Use the fact that the square root function is continuous, which implies measurability.
  exact continuous_sqrt.measurable
  -- The `continuous_sqrt` lemma establishes the continuity of the square root function.
  -- The `measurable` method is then used to conclude that the function is measurable.
  <;> simp_all [measurable_id]
  -- Simplify the context to ensure all hypotheses are met.
  <;> apply measurable_id
  -- Apply the measurability of the identity function to complete the proof.
  <;> simp_all [measurable_id]
  <;> apply measurable_id
  <;> simp_all [measurable_id]
  <;> apply measurable_id
  <;> simp_all [measurable_id]
  <;> apply measurable_id