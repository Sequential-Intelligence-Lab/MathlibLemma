import Mathlib

lemma CFC.sqrt_eq_iff_sq_eq {A} [PartialOrder A] [NonUnitalRing A] [TopologicalSpace A]
  [StarRing A] [Module ℝ A] [SMulCommClass ℝ A A] [IsScalarTower ℝ A A] [StarOrderedRing A]
  [NonUnitalContinuousFunctionalCalculus ℝ A IsSelfAdjoint] [NonnegSpectrumClass ℝ A]
  {a b : A} (ha : 0 ≤ a := by cfc_tac) (hb : 0 ≤ b := by cfc_tac) :
    CFC.sqrt a = CFC.sqrt b ↔ a = b := by
  sorry
