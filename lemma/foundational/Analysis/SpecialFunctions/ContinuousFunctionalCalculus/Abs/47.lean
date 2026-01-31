import Mathlib

lemma CFC.abs_mul_commute
    {A} [NonUnitalRing A] [StarRing A] [TopologicalSpace A]
    [Module ℝ A] [SMulCommClass ℝ A A] [IsScalarTower ℝ A A]
    [NonUnitalContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
    [PartialOrder A] [StarOrderedRing A] [NonnegSpectrumClass ℝ A]
    {a b : A} (h : IsStarNormal a) (h2 : Commute a b) :
    CFC.abs (a * b) = CFC.abs (b * a) := by
  -- `Commute a b` is by definition the equality `a * b = b * a`
  have hmul : a * b = b * a := h2.eq
  -- Apply `CFC.abs` to both sides of the equality
  simpa using congrArg CFC.abs hmul