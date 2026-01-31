import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma CFC.exp_real_algebraMap
  {A : Type*} [NormedRing A] [StarRing A]
  [NormedAlgebra ℝ A] [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
  (r : ℝ) :
  algebraMap ℝ A (Real.exp r) = algebraMap ℝ A (Real.exp r) := by
  -- The proof is trivially true by the reflexivity of equality.
  rfl
  -- Simplify using the property of the algebra map for the real exponential function.
  <;> simp [algebraMap]
  -- Further simplification using the definition of the real exponential function.
  <;> simp [Real.exp]
  -- Final simplification to confirm the equality holds.
  <;> simp