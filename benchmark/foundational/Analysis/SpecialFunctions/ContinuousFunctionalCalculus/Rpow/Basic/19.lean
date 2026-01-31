import Mathlib

lemma CFC.continuous_sqrt {A} [PartialOrder A] [NonUnitalRing A] [TopologicalSpace A]
    [StarRing A] [Module ℝ A] [SMulCommClass ℝ A A] [IsScalarTower ℝ A A]
    [StarOrderedRing A]
    [NonUnitalContinuousFunctionalCalculus ℝ A IsSelfAdjoint] [NonnegSpectrumClass ℝ A] :
    Continuous (CFC.sqrt : A → A) := by
  sorry
