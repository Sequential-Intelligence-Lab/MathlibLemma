import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} {mΩ : MeasurableSpace Ω}
variable {μ ν : MeasureTheory.Measure Ω}
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/
/-- If `X` has finite variance under `μ`, then the second derivative of `cgf` at `0` equals
    the variance of `X`. -/
lemma iteratedDeriv_two_cgf_at_zero_eq_variance
    (hX : MemLp X (2 : ℝ≥0∞) μ)
    (h0 : 0 ∈ interior (integrableExpSet X μ)) :
    iteratedDeriv 2 (cgf X μ) 0 = Var[X; μ] := by
  sorry