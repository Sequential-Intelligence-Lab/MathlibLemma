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

/-- If `X` and `Y` are equal almost everywhere, then
`integrableExpSet X μ = integrableExpSet Y μ`. -/
lemma integrableExpSet_congr_ae (hXY : X =ᵐ[μ] Y) :
    ProbabilityTheory.integrableExpSet X μ =
      ProbabilityTheory.integrableExpSet Y μ := by
  sorry