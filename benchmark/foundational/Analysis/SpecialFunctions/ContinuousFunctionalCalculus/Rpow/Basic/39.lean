import Mathlib

open scoped ComplexConjugate

lemma CFC.spectrum_sqrt
    {A} [PartialOrder A] [Ring A] [TopologicalSpace A] [StarRing A]
    [Algebra ℝ A] [SMulCommClass ℝ A A] [IsScalarTower ℝ A A]
    [StarOrderedRing A]
    [NonUnitalContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
    [NonnegSpectrumClass ℝ A]
    (a : A) (ha : 0 ≤ a) :
    spectrum ℝ (CFC.sqrt a) = Real.sqrt '' spectrum ℝ a := by
  sorry