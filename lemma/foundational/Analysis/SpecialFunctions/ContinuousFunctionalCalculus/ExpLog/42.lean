import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma CFC.log_mul_le_add_log_add_log_real
  {A : Type*} [NormedRing A] [StarRing A] [PartialOrder A]
  [StarOrderedRing A] [NormedAlgebra ℝ A]
  [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
  {a b : A} (ha : IsStrictlyPositive a) (hb : IsStrictlyPositive b)
  (hcomm : a * b = b * a) :
  CFC.log (a * b) ≤ CFC.log a + CFC.log b := by
  have h₁ : IsSelfAdjoint a := by
    sorry

  have h₂ : IsSelfAdjoint b := by
    sorry

  have h₃ : IsSelfAdjoint (a * b) := by
    sorry

  have h₄ : CFC.log (a * b) = CFC.log a + CFC.log b := by
    sorry

  have h₅ : CFC.log (a * b) ≤ CFC.log a + CFC.log b := by
    sorry

  exact h₅