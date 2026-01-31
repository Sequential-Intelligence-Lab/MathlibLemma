import Mathlib

lemma CFC.abs_map_hom
    {A B} [NonUnitalRing A] [StarRing A] [NonUnitalRing B] [StarRing B]
    [TopologicalSpace A] [TopologicalSpace B]
    [Module ℝ A] [SMulCommClass ℝ A A] [IsScalarTower ℝ A A]
    [Module ℝ B] [SMulCommClass ℝ B B] [IsScalarTower ℝ B B]
    [NonUnitalContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
    [NonUnitalContinuousFunctionalCalculus ℝ B IsSelfAdjoint]
    [PartialOrder A] [StarOrderedRing A] [NonnegSpectrumClass ℝ A]
    [PartialOrder B] [StarOrderedRing B] [NonnegSpectrumClass ℝ B]
    (φ : A →⋆ₙ+* B) (a : A) :
    CFC.abs (φ a) = φ (CFC.abs a) := by
  sorry
