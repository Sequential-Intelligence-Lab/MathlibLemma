import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} [mΩ : MeasurableSpace Ω] {μ ν : Measure Ω}
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/

/-- The cgf at `0` is zero. -/
lemma cgf_zero
    (hX : Integrable (fun ω ↦ exp (0 * X ω)) μ := by
      -- This is just a placeholder; the proof is not provided.
      sorry) :
    cgf X μ 0 = 0 := by
  sorry