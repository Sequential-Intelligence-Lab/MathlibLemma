import Mathlib

lemma CFC.continuous_rpow_right {A} [PartialOrder A] [Ring A] [StarRing A] [TopologicalSpace A]
    [StarOrderedRing A] [Algebra ℝ A]
    [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint] [NonnegSpectrumClass ℝ A]
    (a : A) : Continuous fun y : ℝ => CFC.rpow a y := by
  sorry
