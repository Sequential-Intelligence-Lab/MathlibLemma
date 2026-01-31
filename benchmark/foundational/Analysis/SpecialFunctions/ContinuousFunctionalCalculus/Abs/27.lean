import Mathlib

lemma CFC.abs_add_le {A}
    [NormedRing A] [StarRing A] [CStarRing A]
    [NormedAlgebra ℝ A] [SMulCommClass ℝ A A]
    [NonUnitalContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
    [PartialOrder A] [Nontrivial A] [StarOrderedRing A]
    [NonnegSpectrumClass ℝ A]
    (a b : A) :
    ‖CFC.abs (a + b)‖ ≤ ‖CFC.abs a‖ + ‖CFC.abs b‖ := by
  sorry