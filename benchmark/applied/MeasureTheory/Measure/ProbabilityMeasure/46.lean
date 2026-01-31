import Mathlib

open MeasureTheory

/-- If a probability measure is supported in a closed set `K`, then the support is contained
in `K`. -/
lemma ProbabilityMeasure.support_subset_of_restrict_univ_eq
    {Ω : Type*} [TopologicalSpace Ω] [MeasurableSpace Ω] [OpensMeasurableSpace Ω]
    (μ : ProbabilityMeasure Ω)
    {K : Set Ω} (hK : IsClosed K)
    (hμ : (μ.toMeasure).restrict K = μ.toMeasure) :
    Measure.support μ.toMeasure ⊆ K := by
  sorry