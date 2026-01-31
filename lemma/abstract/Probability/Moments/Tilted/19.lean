import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} {mΩ : MeasurableSpace Ω} {μ : Measure Ω}

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/

-- We assume μ is a probability measure; otherwise the statement is in general false.
variable [IsProbabilityMeasure μ]

/-- The cgf of a constant random variable equals `t * c`. -/
lemma cgf_const (c t : ℝ) :
    cgf (fun _ : Ω ↦ c) μ t = t * c := by
  classical
  -- `cgf` is defined as `Real.log` of the `mgf`.
  -- For a constant random variable under a probability measure, `mgf` reduces to
  -- `Real.exp (t * c)`, and then `Real.log (Real.exp (t * c)) = t * c`.
  simpa [cgf, mgf_const, mul_comm, mul_left_comm, mul_assoc]