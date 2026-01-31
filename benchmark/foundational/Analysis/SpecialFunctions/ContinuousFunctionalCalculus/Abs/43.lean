import Mathlib

lemma CFC.abs_negPart_eq (A) [NonUnitalRing A] [StarRing A] [TopologicalSpace A]
    [Module ℝ A] [SMulCommClass ℝ A A] [IsScalarTower ℝ A A]
    [NonUnitalContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
    [PartialOrder A] [StarOrderedRing A] [NonnegSpectrumClass ℝ A]
    (a : A) :
    CFC.abs a + a = 2 • a⁺ := by
  sorry
