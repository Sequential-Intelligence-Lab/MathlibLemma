import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} {mΩ : MeasurableSpace Ω} (μ : Measure Ω)
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/

/-- Cramer–Chernoff bound in terms of the cgf. -/
lemma large_deviation_upper_bound
    (a : ℝ)
    {X : Ω → ℝ} {t : ℝ}
    (ht : t > 0)
    (hExp : Integrable (fun ω ↦ Real.exp (t * X ω)) μ) :
    μ {ω | X ω ≥ a} ≤
      ENNReal.ofReal (Real.exp (-t * a + cgf X μ t)) := by
  sorry