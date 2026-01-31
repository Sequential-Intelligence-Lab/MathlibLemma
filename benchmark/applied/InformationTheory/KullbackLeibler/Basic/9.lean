import Mathlib

open MeasureTheory

/-- KL divergence between probability measures depends only on densities. -/
lemma InformationTheory.klDiv_eq_klDiv_of_rnDeriv_eq
    {α : Type*} [MeasurableSpace α]
    {μ₁ μ₂ ν₁ ν₂ : Measure α}
    [MeasureTheory.IsProbabilityMeasure μ₁]
    [MeasureTheory.IsProbabilityMeasure μ₂]
    [MeasureTheory.IsProbabilityMeasure ν₁]
    [MeasureTheory.IsProbabilityMeasure ν₂]
    (hμ : μ₁.rnDeriv ν₁ = μ₂.rnDeriv ν₂)
    (hν : ν₁ = ν₂) :
    InformationTheory.klDiv μ₁ ν₁ = InformationTheory.klDiv μ₂ ν₂ := by
  sorry