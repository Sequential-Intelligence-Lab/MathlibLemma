import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma cgf_eq_log_mgf
    {Ω : Type*} {m : MeasurableSpace Ω}
    {μ : MeasureTheory.Measure Ω} {X : Ω → ℝ} {t : ℝ} :
    ProbabilityTheory.cgf X μ t =
      Real.log (ProbabilityTheory.mgf X μ t) := by
  -- By definition, the cgf is the natural logarithm of the mgf.
  rw [ProbabilityTheory.cgf]
  -- Simplify the expression using the definition of the mgf.
  <;> simp [ProbabilityTheory.mgf]
  -- Simplify the logarithm of the mgf.
  <;> simp [Real.log]
  -- Simplify the expression further.
  <;> simp
  -- Simplify the expression using algebraic properties.
  <;> ring
  -- Simplify the expression using properties of logarithms.
  <;> simp [Real.log]
  -- Simplify the expression further.
  <;> simp
  -- Simplify the expression using algebraic properties.
  <;> ring