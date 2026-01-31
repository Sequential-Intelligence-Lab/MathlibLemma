import Mathlib

open MeasureTheory Topology

/-- Normalizing a finite measure supported on a set `s` yields a probability measure supported
on `s`. -/
lemma FiniteMeasure.support_normalize_subset
    {Ω : Type*} [TopologicalSpace Ω] [MeasurableSpace Ω]
    [OpensMeasurableSpace Ω] [Nonempty Ω]
    (μ : MeasureTheory.FiniteMeasure Ω)
    {s : Set Ω} (hs : Measure.support (μ : Measure Ω) ⊆ s) :
    Measure.support (μ.normalize : Measure Ω) ⊆ closure s := by
  sorry