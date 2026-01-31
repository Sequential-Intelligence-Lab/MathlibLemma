import Mathlib

open MeasureTheory

/-- KL divergence is invariant under completion of the σ-algebra.

This is only a statement with a `sorry` proof; the goal here is that it typechecks. -/
lemma InformationTheory.klDiv_completion_invariant
    {α : Type*} [MeasurableSpace α]
    (μ ν : Measure α) :
    InformationTheory.klDiv μ ν =
      InformationTheory.klDiv μ.completion μ.completion := by
  admit