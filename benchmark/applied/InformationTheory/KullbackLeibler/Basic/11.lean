import Mathlib

open MeasureTheory

/-- Data-processing inequality for KL divergence under measurable functions. -/
lemma InformationTheory.klDiv_map_le
    {α β : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    (f : α → β) (hf : Measurable f)
    (μ ν : Measure α) :
    InformationTheory.klDiv (Measure.map f μ) (Measure.map f ν)
      ≤ InformationTheory.klDiv μ ν := by
  sorry