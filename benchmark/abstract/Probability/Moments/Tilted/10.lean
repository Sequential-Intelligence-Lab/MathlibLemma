import Mathlib

variable {Ω : Type*} {mΩ : MeasurableSpace Ω} {μ ν : MeasureTheory.Measure Ω}
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/
/-- If `X` is centered under `μ`, then `deriv (cgf X μ) 0 = 0`. -/
lemma deriv_cgf_zero_of_integral_zero
    (hX : Integrable X μ)
    (hmean : ∫ ω, X ω ∂μ = 0) :
    deriv (cgf X μ) 0 = 0 := by
  sorry