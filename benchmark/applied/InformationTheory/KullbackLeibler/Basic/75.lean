import Mathlib

open MeasureTheory
open InformationTheory

/-- KL divergence controls misclassification probability in hypothesis testing. -/
lemma InformationTheory.hypothesis_testing_bound
    {α : Type*} [MeasurableSpace α]
    (μ ν : Measure α)
    (A : Set α)
    [IsFiniteMeasure μ] [IsFiniteMeasure ν] :
    (μ A).toReal + Real.exp (-(InformationTheory.klDiv μ ν).toReal) * (ν Aᶜ).toReal ≥ 1 := by
  sorry