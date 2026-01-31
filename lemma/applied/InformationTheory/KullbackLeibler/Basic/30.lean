import Mathlib

universe u

open MeasureTheory

namespace InformationTheory

/-- KL divergence with respect to a sub-σ-algebra is non-increasing
(conditional expectation / data-processing inequality for sufficient statistics).

This is only a lemma *statement* with `sorry` as proof, intended to compile. -/
lemma klDiv_condexp_le
    {α : Type u}
    [m : MeasurableSpace α]
    [MeasurableSingletonClass α]
    (m' : MeasurableSpace α)
    (h : m ≤ m')
    (μ ν : Measure α) :
    klDiv (μ.trim h) (ν.trim h) ≤ klDiv μ ν := by
  sorry

end InformationTheory