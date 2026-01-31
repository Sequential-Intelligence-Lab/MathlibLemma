import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} [MeasurableSpace Ω] {μ ν : Measure Ω}
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/
/-- If `X` is a.s. constant `c`, then `cgf X μ t = t * c`. -/
lemma cgf_ae_const (c : ℝ) (hXc : X =ᵐ[μ] fun _ ↦ c) :
    cgf X μ t = t * c := by
  sorry