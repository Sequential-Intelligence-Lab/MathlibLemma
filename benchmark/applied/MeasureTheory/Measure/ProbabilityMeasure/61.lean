import Mathlib

/-- A probability measure on `ℝ` is tight. -/
lemma ProbabilityMeasure.tight_real
    (μ : MeasureTheory.ProbabilityMeasure ℝ) :
    ∀ ε > (0 : ℝ), ∃ R > (0 : ℝ),
      (μ : MeasureTheory.Measure ℝ) (Set.Icc (-R) R)ᶜ ≤ ENNReal.ofReal ε := by
  sorry