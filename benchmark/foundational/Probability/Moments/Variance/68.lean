import Mathlib

open ProbabilityTheory
open MeasureTheory

universe u

variable {Ω : Type u} [mΩ : MeasurableSpace Ω]

lemma variance_le_expectation_sq'
    (μ : Measure Ω) [IsProbabilityMeasure μ]
    (X : Ω → ℝ) (hX : AEMeasurable X μ) :
    ProbabilityTheory.variance X μ ≤ μ[X ^ 2] := by
  sorry