import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} {mΩ : MeasurableSpace Ω}
variable {μ ν : Measure Ω}
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

/-- If `X` is bounded above, then the mgf is finite on a right half-line.

This version is stated using `ProbabilityTheory.integrableExpSet` to avoid
ambiguity with any other `integrableExpSet` in the environment. -/
lemma integrableExpSet_of_bddAbove
    (hX : ∃ M, ∀ᵐ ω ∂μ, X ω ≤ M) :
    ∃ R : ℝ, Ici (-R) ⊆ ProbabilityTheory.integrableExpSet X μ := by
  sorry