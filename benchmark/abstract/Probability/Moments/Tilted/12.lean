import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} [MeasurableSpace Ω]
variable (μ : Measure Ω)
variable {X Y : Ω → ℝ} {t : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/
/-- If `X` and `Y` are independent and integrable exponentials, then the cgf of `X + Y` is the sum
    of their cgfs. -/
lemma cgf_add_of_indep
    (hXY : IndepFun X Y μ)
    (hX : t ∈ interior (integrableExpSet X μ))
    (hY : t ∈ interior (integrableExpSet Y μ)) :
    cgf (fun ω ↦ X ω + Y ω) μ t = cgf X μ t + cgf Y μ t := by
  sorry