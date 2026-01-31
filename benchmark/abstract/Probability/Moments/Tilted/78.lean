import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} {mΩ : MeasurableSpace Ω} {μ ν : Measure Ω}
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/

/-- Symmetry of `cgf` for symmetric random variables. -/
lemma cgf_neg_eq_cgf_of_symmetric
    (hSym :
      Measure.map X μ =
        Measure.map (fun x : ℝ => -x) (Measure.map X μ)) :
    cgf X μ (-t) = cgf X μ t := by
  sorry