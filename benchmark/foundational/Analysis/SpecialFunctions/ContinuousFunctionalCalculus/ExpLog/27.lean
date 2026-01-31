import Mathlib

lemma CFC.log_injective_on_positive
  {A : Type*} [NormedRing A] [StarRing A] [PartialOrder A]
  [StarOrderedRing A] [NormedAlgebra ℝ A]
  [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
  {a b : A} (ha : IsStrictlyPositive a) (hb : IsStrictlyPositive b)
  (h : CFC.log a = CFC.log b) :
  a = b := by
  sorry
