import Mathlib

open MeasureTheory ProbabilityTheory

lemma variance_indicator_le_of_bounded
    {Ω : Type*} {mΩ : MeasurableSpace Ω}
    {μ : Measure Ω} [IsProbabilityMeasure μ]
    {X : Ω → ℝ} {s : Set Ω} {C : ℝ}
    (hX : AEMeasurable X μ) (hs : MeasurableSet s)
    (hbound : ∀ᵐ ω ∂μ, ω ∈ s → |X ω| ≤ C) :
    ProbabilityTheory.variance (s.indicator X) μ ≤ C ^ 2 := by
  sorry