import Mathlib

/-- A probability measure with support contained in `{x}` is the Dirac measure at `x`. -/
lemma ProbabilityMeasure.eq_dirac_of_support_subset_singleton
    {Ω : Type*} [MeasurableSpace Ω] [TopologicalSpace Ω] [T1Space Ω] {x : Ω}
    (μ : MeasureTheory.ProbabilityMeasure Ω)
    (h : MeasureTheory.Measure.support (μ : MeasureTheory.Measure Ω) ⊆ {x}) :
    (μ : MeasureTheory.Measure Ω) = MeasureTheory.Measure.dirac x := by
  sorry