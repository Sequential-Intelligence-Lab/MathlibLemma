import Mathlib

open MeasureTheory

/-- Two probability measures on a Polish space that agree on all bounded continuous functions
are equal. -/
lemma ProbabilityMeasure.eq_of_forall_integral_eq
    {Ω : Type*} [TopologicalSpace Ω] [PolishSpace Ω]
    [MeasurableSpace Ω] [OpensMeasurableSpace Ω]
    {μ ν : MeasureTheory.ProbabilityMeasure Ω}
    (h : ∀ f : BoundedContinuousFunction Ω ℝ,
      ∫ x, f x ∂(μ : MeasureTheory.Measure Ω) =
        ∫ x, f x ∂(ν : MeasureTheory.Measure Ω)) :
    μ = ν := by
  sorry