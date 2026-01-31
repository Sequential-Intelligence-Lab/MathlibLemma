import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} {mΩ : MeasurableSpace Ω} {μ ν : Measure Ω}
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/

/-- The cgf of `-X` under `μ` is related to the cgf of `X` by
`cgf (-X) μ t = cgf X μ (-t)`. -/
lemma cgf_neg (X : Ω → ℝ) (μ : Measure Ω) (t : ℝ) :
    cgf (fun ω ↦ -X ω) μ t = cgf X μ (-t) := by
  sorry