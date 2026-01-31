import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} [MeasurableSpace Ω] {μ ν : Measure Ω}
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/
/-- Subadditivity of `log ∘ mgf` for sums of independent random variables. -/
lemma log_mgf_add_le
    (X Y : Ω → ℝ)
    (hXY : IndepFun X Y μ)
    (htX : t ∈ integrableExpSet X μ)
    (htY : t ∈ integrableExpSet Y μ) :
    Real.log (mgf (fun ω ↦ X ω + Y ω) μ t)
      ≤ Real.log (mgf X μ t) + Real.log (mgf Y μ t) := by
  sorry