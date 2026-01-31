import Mathlib

lemma CFC.continuous_rpow_left {A} [PartialOrder A] [Ring A] [StarRing A] [TopologicalSpace A]
    [StarOrderedRing A] [Algebra ℝ A]
    [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint] [NonnegSpectrumClass ℝ A]
    (y : ℝ) : Continuous fun a : A => CFC.rpow a y := by
  sorry
