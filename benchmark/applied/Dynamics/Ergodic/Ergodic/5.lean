import Mathlib

open MeasureTheory

namespace MeasureTheory

/-- If `f` is ergodic and `μ` is a probability measure, then the only
`f`-invariant measurable sets are of measure 0 or 1. -/
lemma Ergodic.measure_invariant_set_eq_zero_or_one
    {α : Type*} [MeasurableSpace α]
    {f : α → α} {μ : Measure α} [IsProbabilityMeasure μ]
    (hf : Ergodic f μ) {s : Set α}
    (hs : MeasurableSet s) (h_inv : f ⁻¹' s = s) :
    μ s = 0 ∨ μ s = 1 :=
by
  sorry

end MeasureTheory