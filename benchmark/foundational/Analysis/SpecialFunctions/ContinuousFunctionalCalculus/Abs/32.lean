import Mathlib

lemma CFC.abs_uniformContinuous {A}
    [NormedRing A] [StarRing A] [CStarRing A] [NormedAlgebra ℝ A]
    [NonUnitalContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
    [PartialOrder A] [StarOrderedRing A]
    [NonnegSpectrumClass ℝ A] :
    UniformContinuous (CFC.abs : A → A) := by
  sorry