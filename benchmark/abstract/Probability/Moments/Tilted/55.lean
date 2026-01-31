import Mathlib


variable {Ω : Type*} {mΩ : MeasurableSpace Ω} {μ ν : MeasureTheory.Measure Ω}
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/
/-- Non-negativity of the second derivative of `cgf`. -/
lemma iteratedDeriv_two_cgf_nonneg
    (ht : t ∈ interior (integrableExpSet X μ)) :
    0 ≤ iteratedDeriv 2 (cgf X μ) t := by
  sorry