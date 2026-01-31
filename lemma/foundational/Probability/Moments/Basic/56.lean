import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma mgf_eq_one_of_zero
    {Ω : Type*} [MeasurableSpace Ω]
    (μ : MeasureTheory.Measure Ω) [MeasureTheory.IsProbabilityMeasure μ]
    {X : Ω → ℝ} :
    ProbabilityTheory.mgf X μ 0 = 1 := by
  -- Simplify the expression using the definition of mgf and properties of expectation.
  simp [ProbabilityTheory.mgf, MeasureTheory.IsProbabilityMeasure]
  -- Use the property that the integral of 1 over the entire space is 1 for a probability measure.
  <;> simp [integral_one]
  -- Normalize the numerical result to ensure it is exactly 1.
  <;> norm_num