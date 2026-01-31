import Mathlib

lemma CFC.sqrt_eq_self_of_idempotent {A} [PartialOrder A] [NonUnitalRing A]
  [TopologicalSpace A] [StarRing A]
  [Module ℝ A] [SMulCommClass ℝ A A] [IsScalarTower ℝ A A]
  [StarOrderedRing A]
  [NonUnitalContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
  [NonnegSpectrumClass ℝ A] {a : A}
  (ha : 0 ≤ a := by cfc_tac) (hId : a * a = a) :
    CFC.sqrt a = a := by
  sorry
