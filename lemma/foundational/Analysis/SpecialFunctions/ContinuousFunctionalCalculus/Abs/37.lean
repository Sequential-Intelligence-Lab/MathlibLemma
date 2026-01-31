import Mathlib

open scoped ComplexOrder

lemma CFC.abs_isPos
    (A)
    [NonUnitalRing A] [StarRing A] [TopologicalSpace A]
    [PartialOrder A] [StarOrderedRing A]
    [Module ℝ A] [SMulCommClass ℝ A A] [IsScalarTower ℝ A A]
    [NonUnitalContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
    [NonnegSpectrumClass ℝ A]
    (a : A) :
    0 ≤ CFC.abs a := by
  simpa using (CFC.abs_isPos (a := a) : 0 ≤ CFC.abs a)