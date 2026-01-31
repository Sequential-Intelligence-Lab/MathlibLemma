import Mathlib

lemma CFC.log_real_commute_algebraMap
  {A : Type*} [NormedRing A] [StarRing A] [GroupWithZero A]
  [LE A]
  [NormedAlgebra ℝ A] [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
  (a : A) (r : ℝ)
  (ha : IsStrictlyPositive a) (hr : 0 < r) :
  CFC.log (a * algebraMap ℝ A r) =
    CFC.log a + algebraMap ℝ A (Real.log r) := by
  sorry