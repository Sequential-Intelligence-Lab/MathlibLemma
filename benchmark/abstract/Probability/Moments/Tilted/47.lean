import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} {mΩ : MeasurableSpace Ω} {μ ν : Measure Ω}
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/

/-- The mean under the tilted measure can be expressed as a ratio of expectations. -/
lemma integral_tilted_ratio
    (ht : Integrable (fun ω ↦ Real.exp (t * X ω)) μ)
    (hX : Integrable (fun ω ↦ X ω * Real.exp (t * X ω)) μ) :
    (∫ ω, X ω ∂(μ.tilted (fun ω ↦ t * X ω)))
      = (∫ ω, X ω * Real.exp (t * X ω) ∂μ) /
        (∫ ω, Real.exp (t * X ω) ∂μ) := by
  sorry