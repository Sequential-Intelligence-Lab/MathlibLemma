import Mathlib

open MeasureTheory

namespace InformationTheory

/-- KL divergence is invariant under adding a ν-null measure to μ. -/
lemma klDiv_add_null_left
    {α : Type*} [MeasurableSpace α]
    (μ ν ρ : Measure α)
    (hρ : ρ ≪ ν) (hnρ : ρ = 0) :
    klDiv (μ + ρ) ν = klDiv μ ν := by
  -- Since ρ = 0, we have μ + ρ = μ, so the KL divergence is unchanged.
  simpa [hnρ]

end InformationTheory