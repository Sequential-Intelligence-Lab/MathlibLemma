import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} {mΩ : MeasurableSpace Ω} {μ ν : MeasureTheory.Measure Ω}
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/
/-- If `X` is a.s. constant `c`, then `mgf X μ t = exp (t * c)`. -/
lemma mgf_ae_const (c : ℝ) (hXc : X =ᵐ[μ] fun _ ↦ c) :
    mgf X μ t = Real.exp (t * c) := by
  sorry