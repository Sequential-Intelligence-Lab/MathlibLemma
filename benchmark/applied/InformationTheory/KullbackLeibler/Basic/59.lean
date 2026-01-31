import Mathlib

open scoped MeasureTheory

open ProbabilityTheory
open MeasureTheory
open InformationTheory

/-- Equality case in data-processing inequality: recovery map implies equality of KL divergence. -/
lemma InformationTheory.klDiv_map_eq_of_markov_kernel_injective
    {α β : Type*} [MeasurableSpace α] [MeasurableSpace β] [Nonempty β]
    (K : α → Measure β)
    (hMarkov : ∀ x, IsProbabilityMeasure (K x))
    (μ ν : Measure α)
    (hrec : ∀ ρ : Measure β, ∃ L : β → Measure α,
      (∀ y, IsProbabilityMeasure (L y)) ∧
      Measure.bind (Measure.bind μ K) L = μ ∧
      Measure.bind (Measure.bind ν K) L = ν) :
    klDiv (Measure.bind μ K) (Measure.bind ν K)
      = klDiv μ ν := by
  sorry