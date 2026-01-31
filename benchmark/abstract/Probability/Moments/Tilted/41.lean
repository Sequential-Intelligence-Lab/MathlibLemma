import Mathlib

variable {Ω : Type*} [MeasurableSpace Ω]
variable (μ : MeasureTheory.Measure Ω) (ν : MeasureTheory.Measure Ω)
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/

/-- The tilted measure of an event with respect to `t * X` can be expressed in terms of the
    original probability and the mgf. -/
lemma tilted_mul_prob_event_eq
    (A : Set Ω) (hA : MeasurableSet A) :
    (μ.tilted (fun ω => t * X ω)) A
      = (∫⁻ ω in A, ENNReal.ofReal (Real.exp (t * X ω)) ∂μ)
          / ENNReal.ofReal (mgf X μ t) := by
  sorry