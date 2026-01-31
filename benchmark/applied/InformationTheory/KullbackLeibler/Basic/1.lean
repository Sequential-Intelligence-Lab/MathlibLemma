import Mathlib

open scoped MeasureTheory
open MeasureTheory
open InformationTheory

/-- Nonnegativity of the real-valued KL divergence for finite measures. -/
lemma toReal_klDiv_nonneg {α : Type*} [MeasurableSpace α]
    (μ ν : Measure α) [MeasureTheory.IsFiniteMeasure μ] [MeasureTheory.IsFiniteMeasure ν] :
    0 ≤ (InformationTheory.klDiv μ ν).toReal := by
  sorry