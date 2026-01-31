import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/
/-- The mgf is analytic on the interior of `integrableExpSet`. -/
lemma analyticOn_mgf
    {Ω : Type*} [MeasurableSpace Ω]
    (X : Ω → ℝ) (μ : Measure Ω) :
    AnalyticOn ℝ (fun t ↦ mgf X μ t) (interior (integrableExpSet X μ)) := by
  sorry