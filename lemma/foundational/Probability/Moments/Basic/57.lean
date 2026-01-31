import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma mgf_dirac_real
    {x : ℝ} {t : ℝ} :
    ProbabilityTheory.mgf (fun _ : ℝ ↦ x) (MeasureTheory.Measure.dirac 0) t =
      Real.exp (t * x) := by
  -- Simplify the expression using the definition of the MGF and properties of the Dirac measure.
  simp [ProbabilityTheory.mgf, MeasureTheory.integral_dirac]
  -- The integral of e^(t * x) with respect to the Dirac measure at 0 is e^(t * x).
  <;> simp [Real.exp_mul]
  -- Simplify the expression using the property of the exponential function.
  <;> ring
  -- Normalize the expression to ensure correctness.
  <;> norm_cast