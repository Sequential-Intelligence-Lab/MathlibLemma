import Mathlib

open scoped MeasureTheory
open MeasureTheory

/-- A probability measure is determined up to null sets by its Radon–Nikodym derivative with
respect to another σ-finite measure. -/
lemma ProbabilityMeasure.eq_of_rnDeriv_eq
    {Ω : Type*} [MeasurableSpace Ω]
    {μ ν : ProbabilityMeasure Ω}
    {ρ : Measure Ω} [SigmaFinite ρ]
    (hμ : (μ : Measure Ω) ≪ ρ)
    (hν : (ν : Measure Ω) ≪ ρ)
    (h : Measure.rnDeriv ρ (μ : Measure Ω)
        =ᵐ[ρ] Measure.rnDeriv ρ (ν : Measure Ω)) :
    μ = ν := by
  sorry