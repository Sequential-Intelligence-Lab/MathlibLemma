import Mathlib

open scoped BigOperators
open MeasureTheory ProbabilityTheory

variable {Ω ι : Type*}

/-- A toy inequality about the variance of a finite sum (dummy statement, proof omitted). -/
lemma variance_sum_le_sum_variance
    [mΩ : MeasurableSpace Ω] (μ : Measure Ω) [IsFiniteMeasure μ]
    [Fintype ι] (X : ι → Ω → ℝ) :
    ProbabilityTheory.variance (fun ω => ∑ i, X i ω) μ ≤
      (Finset.univ.sum (fun i => ProbabilityTheory.variance (X i) μ)) *
        (Fintype.card ι : ℝ) := by
  sorry