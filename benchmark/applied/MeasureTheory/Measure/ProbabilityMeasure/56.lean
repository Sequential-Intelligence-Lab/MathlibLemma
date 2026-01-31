import Mathlib

open MeasureTheory

/-- A probability measure on `ℕ` is the distribution of a discrete random variable. -/
lemma ProbabilityMeasure.exists_sum_prob_nat
    (μ : MeasureTheory.ProbabilityMeasure ℕ) :
    ∑' n : ℕ, (μ : MeasureTheory.Measure ℕ) {n} = 1 := by
  sorry