import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} {mΩ : MeasurableSpace Ω} {μ ν : MeasureTheory.Measure Ω}
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/
/-- The mgf of `-X` under `μ` is related to the mgf of `X` by `mgf (-X) μ t = mgf X μ (-t)`. -/
lemma mgf_neg (t : ℝ) :
    ProbabilityTheory.mgf (fun ω ↦ -X ω) μ t =
      ProbabilityTheory.mgf X μ (-t) := by
  sorry