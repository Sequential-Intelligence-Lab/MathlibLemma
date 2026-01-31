import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} [mΩ : MeasurableSpace Ω]
variable (μ : Measure Ω)
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/
/-- Jensen's inequality for `cgf` under the measure `μ`. -/
lemma cgf_Jensen
    {X : Ω → ℝ} {t : ℝ}
    (hX : Integrable X μ) :
    cgf X μ t ≥ t * (∫ ω, X ω ∂μ) := by
  sorry