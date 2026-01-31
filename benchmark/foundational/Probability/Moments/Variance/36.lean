import Mathlib

open ProbabilityTheory
open MeasureTheory

variable {Ω : Type*} [MeasurableSpace Ω]

lemma variance_le_of_ae_bound_sq
    (μ : Measure Ω) [IsProbabilityMeasure μ]
    (X : Ω → ℝ) (C : ℝ)
    (hX : AEMeasurable X μ)
    (hbound : ∀ᵐ ω ∂μ, (X ω - μ[X] ) ^ 2 ≤ C ^ 2) :
    ProbabilityTheory.variance X μ ≤ C ^ 2 := by
  sorry