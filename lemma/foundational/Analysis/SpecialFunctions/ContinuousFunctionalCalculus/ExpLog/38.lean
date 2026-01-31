import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma CFC.log_one_real'
  {A : Type*} [NormedRing A] [StarRing A] [NormedAlgebra ℝ A]
  [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint] :
  CFC.log (1 : A) = 0 := by
  -- Use the property that the logarithm of the identity element is zero.
  have h : CFC.log (1 : A) = 0 := by
    -- Apply the property of the logarithm function in the context of continuous functional calculus.
    apply CFC.log_one
  -- Simplify the proof by using the established property.
  simpa using h