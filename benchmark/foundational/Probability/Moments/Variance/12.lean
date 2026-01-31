import Mathlib

open MeasureTheory
open ProbabilityTheory

lemma variance_eq_integral_sq_sub_sq_mean
    {Ω : Type*} [mΩ : MeasurableSpace Ω] (μ : Measure Ω)
    [IsProbabilityMeasure μ]
    {X : Ω → ℝ}
    (hX : MemLp X 2 μ) :
    variance X μ =
      (∫ x, (X x) ^ 2 ∂μ) - (∫ x, X x ∂μ) ^ 2 := by
  sorry