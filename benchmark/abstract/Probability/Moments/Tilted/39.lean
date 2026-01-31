import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} {mΩ : MeasurableSpace Ω} {μ ν : Measure Ω}
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/
/-- A formula for the Radon–Nikodym derivative between two tilted measures of the same base
    measure but different parameters. -/
lemma rnDeriv_tilted_tilted (f : Ω → ℝ) :
    ((μ.tilted fun ω ↦ t * f ω).rnDeriv
        (μ.tilted fun ω ↦ s * f ω))
      =ᵐ[μ.tilted fun ω ↦ s * f ω]
        fun ω ↦
          ENNReal.ofReal
            (Real.exp ((t - s) * f ω) *
              ProbabilityTheory.mgf f μ s /
              ProbabilityTheory.mgf f μ t) := by
  sorry