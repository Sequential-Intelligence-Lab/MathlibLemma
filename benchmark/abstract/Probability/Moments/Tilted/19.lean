import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} {mΩ : MeasurableSpace Ω} {μ : Measure Ω}

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/

/-- The cgf of a constant random variable equals `t * c`. -/
lemma cgf_const (c t : ℝ) :
    cgf (fun _ : Ω ↦ c) μ t = t * c := by
  sorry