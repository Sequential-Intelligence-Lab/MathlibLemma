import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} [MeasurableSpace Ω]
variable (μ : Measure Ω)
variable (X : Ω → ℝ)

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/
/-- The cgf is analytic on the interior of `integrableExpSet`. -/
lemma analyticOn_cgf :
    AnalyticOn ℝ (fun t ↦ ProbabilityTheory.cgf X μ t)
      (interior (ProbabilityTheory.integrableExpSet X μ)) := by
  sorry