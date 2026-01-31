import Mathlib

open scoped BigOperators
open ProbabilityTheory
open MeasureTheory

lemma variance_sum_le
    {Ω : Type*} [MeasurableSpace Ω]
    (μ : Measure Ω) [IsFiniteMeasure μ]
    {ι : Type*} [Fintype ι]
    (X : ι → Ω → ℝ)
    (hX : ∀ i, MeasureTheory.MemLp (X i) 2 μ) :
    ProbabilityTheory.variance (fun ω => ∑ i, X i ω) μ ≤
      (∑ i, Real.sqrt (ProbabilityTheory.variance (X i) μ)) ^ 2 := by
  sorry