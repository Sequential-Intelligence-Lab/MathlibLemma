import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} [mΩ : MeasurableSpace Ω]
variable {μ ν : MeasureTheory.Measure Ω}
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/
/-- The integrable exponential set is symmetric if `X` has a symmetric law under `μ`. -/
lemma integrableExpSet_symmetric
    (hSym :
      Measure.map X μ =
        Measure.map (fun x : ℝ ↦ -x) (Measure.map X μ)) :
    integrableExpSet X μ = -integrableExpSet X μ := by
  sorry