import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma cgf_const_prob
    {Ω : Type*} {m : MeasurableSpace Ω}
    (μ : MeasureTheory.Measure Ω)
    [MeasureTheory.IsProbabilityMeasure μ]
    (c t : ℝ) :
    ProbabilityTheory.cgf (fun _ : Ω ↦ c) μ t = t * c := by
  -- Simplify the expression using the definition of cgf and properties of measurable functions.
  simp [ProbabilityTheory.cgf, measurable_const]
  -- Use the fact that the integral of a constant function over a probability measure is the constant itself.
  <;> simp [integral_const]
  -- Simplify the logarithmic expression using the fact that the exponential of a constant is a constant.
  <;> simp [log_exp]
  -- Normalize the expression to achieve the final form.
  <;> ring