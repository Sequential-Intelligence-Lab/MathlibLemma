import Mathlib

lemma CFC.sqrt_nnrpow_real {A} [PartialOrder A] [Ring A] [TopologicalSpace A]
  [StarRing A] [StarOrderedRing A] [Algebra ℝ A]
  [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint] [NonnegSpectrumClass ℝ A]
  (a : A) :
    CFC.sqrt a = a ^ (1 / 2 : ℝ) := by
  sorry
