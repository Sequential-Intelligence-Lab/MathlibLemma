import Mathlib

open MeasureTheory ProbabilityTheory

lemma variance_nonneg_real
    {Ω : Type*} [MeasurableSpace Ω]
    (μ : Measure Ω) [IsProbabilityMeasure μ]
    (X : Ω → ℝ) :
    0 ≤ Var[X; μ] := by
  sorry