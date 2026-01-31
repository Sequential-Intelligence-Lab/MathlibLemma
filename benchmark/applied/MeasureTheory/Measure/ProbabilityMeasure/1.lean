import Mathlib

/-- A real-valued probability measure on a finite type has support contained in the finite set. -/
lemma ProbabilityMeasure.support_subset_univ_finite
    {Ω : Type*} [Fintype Ω] [MeasurableSpace Ω] [TopologicalSpace Ω]
    (μ : MeasureTheory.ProbabilityMeasure Ω) :
    (MeasureTheory.Measure.support (μ : MeasureTheory.Measure Ω)) ⊆
      (Set.univ : Set Ω) := by
  sorry