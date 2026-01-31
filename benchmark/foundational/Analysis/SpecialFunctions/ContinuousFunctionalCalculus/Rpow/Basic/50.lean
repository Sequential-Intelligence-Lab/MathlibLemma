import Mathlib

lemma CFC.sqrt_inv {A} [PartialOrder A] [Ring A] [TopologicalSpace A] [StarRing A]
  [StarOrderedRing A] [Algebra ℝ A]
  [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
  [NonnegSpectrumClass ℝ A] (a : Aˣ) :
    CFC.sqrt ((↑a : A) ^ (-1 : ℝ)) = (CFC.sqrt (↑a : A)) ^ (-1 : ℝ) := by
  sorry
