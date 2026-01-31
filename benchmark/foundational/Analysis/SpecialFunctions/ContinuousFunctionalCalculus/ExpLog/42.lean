import Mathlib

lemma CFC.log_mul_le_add_log_add_log_real
  {A : Type*} [NormedRing A] [StarRing A] [PartialOrder A]
  [StarOrderedRing A] [NormedAlgebra ℝ A]
  [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
  {a b : A} (ha : IsStrictlyPositive a) (hb : IsStrictlyPositive b)
  (hcomm : a * b = b * a) :
  CFC.log (a * b) ≤ CFC.log a + CFC.log b := by
  sorry
