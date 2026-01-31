import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} [mΩ : MeasurableSpace Ω]
variable {μ ν : MeasureTheory.Measure Ω}
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/
/-- If `X` is a.s. zero, then `cgf X μ t = 0` for all `t`. -/
lemma cgf_ae_zero (hX0 : X =ᵐ[μ] 0) :
    ProbabilityTheory.cgf X μ t = 0 := by
  sorry