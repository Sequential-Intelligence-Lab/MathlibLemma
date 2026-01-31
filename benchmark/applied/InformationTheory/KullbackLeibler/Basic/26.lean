import Mathlib

open MeasureTheory

namespace InformationTheory

universe u

/-- KL divergence is zero iff the Radon–Nikodym derivative is a.e. 1. -/
lemma klDiv_eq_zero_iff_rnDeriv_eq_one
    {α : Type u} [MeasurableSpace α]
    (μ ν : Measure α)
    (hμν : μ ≪ ν) (hνμ : ν ≪ μ) :
    InformationTheory.klDiv μ ν = 0 ↔ μ.rnDeriv ν =ᵐ[ν] 1 := by
  sorry

end InformationTheory