import Mathlib

lemma CFC.rpow_bit0 {A} [PartialOrder A] [Ring A] [TopologicalSpace A]
  [StarRing A] [StarOrderedRing A] [Algebra ℝ A]
  [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint] [NonnegSpectrumClass ℝ A]
  (a : A) (x : ℝ) :
    a ^ (2 * x) = a ^ x * a ^ x := by
  sorry