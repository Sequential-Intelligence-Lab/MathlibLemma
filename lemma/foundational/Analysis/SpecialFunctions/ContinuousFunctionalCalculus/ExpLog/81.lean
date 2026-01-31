import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


lemma CFC.log_inv_zpow
  {A : Type*} [NormedRing A] [StarRing A]
  [GroupWithZero A] [NormedAlgebra ℝ A]
  [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
  (a : A) (n : ℤ) (ha : IsSelfAdjoint a)
  (hz : ∀ x ∈ spectrum ℝ a, x ≠ 0) :
  CFC.log (a ^ (-n)) = -(n : ℝ) • CFC.log a := by
  sorry