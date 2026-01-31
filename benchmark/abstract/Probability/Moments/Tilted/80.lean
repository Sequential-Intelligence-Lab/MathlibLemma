import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} [MeasurableSpace Ω] (μ ν : Measure Ω)
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/
/-- If the cgf exists on an open set containing zero, then the mgf is log-convex there. -/
lemma logConvexOn_mgf
    (X : Ω → ℝ) (μ : Measure Ω)
    (U : Set ℝ) (hUo : IsOpen U)
    (h0U : (0 : ℝ) ∈ U)
    (hU : U ⊆ ProbabilityTheory.integrableExpSet X μ) :
    ConvexOn ℝ U (fun t ↦ Real.log (ProbabilityTheory.mgf X μ t)) := by
  sorry