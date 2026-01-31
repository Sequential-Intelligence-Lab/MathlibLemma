import Mathlib

lemma CFC.abs_posPart_le_abs {A}
    [NonUnitalRing A] [StarRing A] [TopologicalSpace A]
    [Module ℝ A] [SMulCommClass ℝ A A] [IsScalarTower ℝ A A]
    [NonUnitalContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
    [PartialOrder A] [StarOrderedRing A] [NonnegSpectrumClass ℝ A]
    (a : A) :
    a⁺ ≤ CFC.abs a := by
  sorry
