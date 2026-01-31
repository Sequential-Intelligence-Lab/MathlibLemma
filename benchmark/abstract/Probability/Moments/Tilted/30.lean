import Mathlib

variable {Ω : Type*} {mΩ : MeasurableSpace Ω} {μ ν : MeasureTheory.Measure Ω}
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

open MeasureTheory Filter Topology Set Real ENNReal

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/

/-- Monotonicity of `cgf` in `t` when `X` is non-negative a.e. -/
lemma cgf_mono_of_nonneg_ae
    (hX : 0 ≤ᵐ[μ] X) :
    Monotone (fun t ↦ ProbabilityTheory.cgf X μ t) := by
  sorry