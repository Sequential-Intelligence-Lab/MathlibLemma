import Mathlib

namespace InformationTheory

open MeasureTheory

/-- KL divergence is invariant under adding a μ-null measure to ν. -/
lemma klDiv_add_null_right
    {α : Type*} [MeasurableSpace α]
    (μ ν ρ : Measure α)
    (hμρ : μ ≪ ρ) (hnρ : ρ = 0) :
    klDiv μ (ν + ρ) = klDiv μ ν := by
  sorry

end InformationTheory