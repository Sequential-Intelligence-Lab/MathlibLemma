import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} [MeasurableSpace Ω] {μ ν : Measure Ω}
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/
/-- The mgf uniquely determines all moments when it is analytic in a neighborhood of the origin. -/
lemma moment_from_mgf
    (n : ℕ)
    (h0 : 0 ∈ interior (integrableExpSet X μ)) :
    (∫ ω, (X ω)^n ∂μ)
      = (deriv^[n] (fun t ↦ mgf X μ t) 0) := by
  sorry