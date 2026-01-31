import Mathlib

lemma CFC.abs_ne_zero_iff {A}
    [NonUnitalNormedRing A] [StarRing A] [CStarRing A]
    [Module ℝ A] [SMulCommClass ℝ A A] [NormedSpace ℝ A]
    [IsScalarTower ℝ A A]
    [NonUnitalContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
    [PartialOrder A] [StarOrderedRing A]
    [NonnegSpectrumClass ℝ A]
    (a : A) :
    CFC.abs a ≠ 0 ↔ a ≠ 0 := by
  sorry