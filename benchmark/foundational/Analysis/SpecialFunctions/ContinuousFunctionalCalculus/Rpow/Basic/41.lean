import Mathlib

open scoped Real

lemma CFC.spectrum_rpow_real
    {A} [PartialOrder A] [Ring A] [TopologicalSpace A]
    [StarRing A] [StarOrderedRing A] [Algebra ℝ A]
    [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint] [NonnegSpectrumClass ℝ A]
    (a : A) (x : ℝ) :
    spectrum ℝ (a ^ x) = (fun t : ℝ => t ^ x) '' spectrum ℝ a := by
  sorry