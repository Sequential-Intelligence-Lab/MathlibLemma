import Mathlib

open MeasureTheory ProbabilityTheory

variable {Ω : Type*} [MeasurableSpace Ω] (μ : Measure Ω) [IsProbabilityMeasure μ]

lemma variance_bound_of_ae_bound
    {X : Ω → ℝ} {a b : ℝ}
    (h : ∀ᵐ ω ∂μ, X ω ∈ Set.Icc a b) (hX : AEMeasurable X μ) :
    ProbabilityTheory.variance X μ ≤ (b - a) ^ 2 := by
  sorry