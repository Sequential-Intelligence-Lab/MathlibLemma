import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma mgf_dirac_point
    {Ω : Type*} [MeasurableSpace Ω] [MeasurableSingletonClass Ω]
    {ω : Ω} {X : Ω → ℝ} {t : ℝ} :
    ProbabilityTheory.mgf X (MeasureTheory.Measure.dirac ω) t =
      Real.exp (t * X ω) := by
  -- Use the definition of the MGF and the property of the Dirac delta measure
  simp [ProbabilityTheory.mgf, MeasureTheory.integral_dirac]
  -- Simplify the expression using the fact that the Dirac delta measure evaluates functions at ω
  <;> simp [Real.exp_mul]
  -- Further simplify the expression to match the desired form
  <;> ring
  <;> rfl