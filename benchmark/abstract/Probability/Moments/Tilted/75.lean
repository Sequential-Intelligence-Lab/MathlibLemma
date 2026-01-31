import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} {mΩ : MeasurableSpace Ω} {μ : Measure Ω}
variable (X : Ω → ℝ)

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/
/-- `integrableExpSet X μ` is convex. -/
lemma convex_integrableExpSet :
    Convex ℝ (integrableExpSet X μ) := by
  sorry