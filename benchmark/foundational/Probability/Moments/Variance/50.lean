import Mathlib

open MeasureTheory
open ProbabilityTheory

variable {Ω : Type*} [mΩ : MeasurableSpace Ω]

variable (μ : Measure Ω) [MeasureTheory.IsProbabilityMeasure μ]

lemma variance_pow_two_le_expectation_fourth
    {X : Ω → ℝ}
    (hX : MeasureTheory.MemLp X 4 μ) :
    ProbabilityTheory.variance (fun ω => X ω ^ 2) μ
      ≤ μ[X ^ 4] := by
  sorry