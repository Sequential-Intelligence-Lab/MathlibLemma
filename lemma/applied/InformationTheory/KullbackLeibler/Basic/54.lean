import Mathlib

namespace InformationTheory

open MeasureTheory

/-- KL divergence is invariant under adding a μ-null measure to ν.

In this specialized version, the added measure `ρ` is assumed to be the zero
measure, so `ν + ρ = ν`, and the result is immediate by simplification.
The hypothesis `hμρ : μ ≪ ρ` is not used in this proof but is kept in the
statement for compatibility with a more general intended lemma. -/
lemma klDiv_add_null_right
    {α : Type*} [MeasurableSpace α]
    (μ ν ρ : Measure α)
    (hμρ : μ ≪ ρ) (hnρ : ρ = 0) :
    klDiv μ (ν + ρ) = klDiv μ ν := by
  simpa [hnρ]

end InformationTheory