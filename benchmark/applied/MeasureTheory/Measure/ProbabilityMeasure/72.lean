import Mathlib

open MeasureTheory

/-- The barycenter (expectation) of a probability measure on a convex compact subset of a
topological vector space lies in that set. -/
lemma ProbabilityMeasure.barycenter_mem
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    [CompleteSpace E]
    [MeasurableSpace E] [BorelSpace E]
    (μ : MeasureTheory.ProbabilityMeasure E)
    {K : Set E} (hKconv : Convex ℝ K) (hKcompact : IsCompact K)
    (hsupp : (μ : Measure E).support ⊆ K) :
    (∫ x, x ∂(μ : Measure E)) ∈ K := by
  sorry