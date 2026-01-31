import Mathlib

open MeasureTheory
open ProbabilityTheory

variable {Ω : Type*} [MeasurableSpace Ω]

lemma variance_bounded_of_ae_le
    (μ : Measure Ω) [IsProbabilityMeasure μ]
    (X : Ω → ℝ) (C : ℝ)
    (hX : AEMeasurable X μ)
    (hbound : ∀ᵐ ω ∂μ, |X ω| ≤ C) :
    variance X μ ≤ C ^ 2 := by
  sorry