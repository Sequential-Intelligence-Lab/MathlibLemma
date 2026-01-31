import Mathlib

universe u

open scoped BigOperators
open MeasureTheory

lemma evariance_comp_mul
    {Ω : Type u} [MeasurableSpace Ω]
    (μ : MeasureTheory.Measure Ω) (c : ℝ) (X : Ω → ℝ) :
    ProbabilityTheory.evariance (fun ω => c * X ω) μ =
      ENNReal.ofReal (c ^ 2) * ProbabilityTheory.evariance X μ := by
  sorry