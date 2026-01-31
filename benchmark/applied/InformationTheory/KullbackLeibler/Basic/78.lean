import Mathlib

open MeasureTheory

/-- KL divergence is additive under independent repetitions. -/
lemma InformationTheory.klDiv_pow_product
    {α : Type*} [MeasurableSpace α]
    (μ ν : MeasureTheory.Measure α)
    [MeasureTheory.IsProbabilityMeasure μ]
    [MeasureTheory.IsProbabilityMeasure ν]
    (n : ℕ) :
    InformationTheory.klDiv
      (MeasureTheory.Measure.pi (fun _ : Fin n => μ))
      (MeasureTheory.Measure.pi (fun _ : Fin n => ν))
      = n • InformationTheory.klDiv μ ν := by
  sorry