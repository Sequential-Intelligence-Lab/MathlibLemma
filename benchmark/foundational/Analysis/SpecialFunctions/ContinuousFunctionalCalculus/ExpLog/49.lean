import Mathlib

variable {A : Type*}

/-- An abstract exponential map on `A`. In applications this would come
from continuous functional calculus. -/
@[simp] def expA [NormedRing A] [StarRing A] [NormedAlgebra ℝ A] (a : A) : A := a

lemma CFC.exp_real_commute_algebraMap
  [NormedRing A] [StarRing A] [NormedAlgebra ℝ A]
  [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
  (a : A) (r : ℝ) :
  expA (a + algebraMap ℝ A r) = expA a * algebraMap ℝ A (Real.exp r) := by
  sorry