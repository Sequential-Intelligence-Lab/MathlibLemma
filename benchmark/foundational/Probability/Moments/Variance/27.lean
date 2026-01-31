import Mathlib

open MeasureTheory ProbabilityTheory

lemma evariance_const_add
    {Ω : Type*} [MeasurableSpace Ω] (μ : Measure Ω)
    [MeasureTheory.IsProbabilityMeasure μ]
    (X : Ω → ℝ) (c : ℝ) (hX : AEMeasurable X μ) :
    ProbabilityTheory.evariance (fun ω => c + X ω) μ =
      ProbabilityTheory.evariance X μ := by
  sorry