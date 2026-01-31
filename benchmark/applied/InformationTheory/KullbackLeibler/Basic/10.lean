import Mathlib

open MeasureTheory

/-- KL divergence is invariant under measurable isomorphisms (pushforward). -/
lemma InformationTheory.klDiv_map_equiv {α β : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    (e : α ≃ᵐ β) (μ ν : Measure α) :
    InformationTheory.klDiv (Measure.map e μ) (Measure.map e ν) =
      InformationTheory.klDiv μ ν := by
  sorry