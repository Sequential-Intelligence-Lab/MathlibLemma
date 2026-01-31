import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} {mΩ : MeasurableSpace Ω}
variable {μ ν : MeasureTheory.Measure Ω}
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/
/-- Scaling the random variable scales the argument of the cgf. -/
lemma cgf_smul (a : ℝ) :
    ProbabilityTheory.cgf (fun ω ↦ a * X ω) μ t =
      ProbabilityTheory.cgf X μ (a * t) := by
  sorry