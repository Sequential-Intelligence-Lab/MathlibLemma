import Mathlib

/-- A probability measure on a compact metric space is Radon (modeled here
as being finite on the whole space). -/
lemma ProbabilityMeasure.isRadon
    {Ω : Type*} [TopologicalSpace Ω] [CompactSpace Ω]
    [MeasurableSpace Ω] [BorelSpace Ω]
    (μ : MeasureTheory.ProbabilityMeasure Ω) :
    (μ : MeasureTheory.Measure Ω) Set.univ < ⊤ := by
  -- For a finite measure, the measure of the whole space is `< ∞`.
  -- A `ProbabilityMeasure` is in particular a finite measure.
  simpa using
    (MeasureTheory.measure_univ_lt_top (μ := (μ : MeasureTheory.Measure Ω)))