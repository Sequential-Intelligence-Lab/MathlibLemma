import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type} {mΩ : MeasurableSpace Ω} {μ ν : Measure Ω}
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/

/-- The Radon–Nikodym derivative of the tilted measure `μ.tilted f` with respect to `μ`. -/
lemma rnDeriv_tilted (f : Ω → ℝ) :
    (Measure.tilted μ f).rnDeriv μ
      =ᵐ[μ] fun ω ↦ ENNReal.ofReal (Real.exp (f ω) / ∫ x, Real.exp (f x) ∂μ) := by
  sorry