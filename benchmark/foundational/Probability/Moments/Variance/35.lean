import Mathlib

open MeasureTheory ProbabilityTheory

lemma evariance_indicator_le_of_bounded
    {Ω : Type*} [MeasurableSpace Ω]
    (μ : Measure Ω) [MeasureTheory.IsProbabilityMeasure μ]
    {X : Ω → ℝ} {s : Set Ω} {C : ℝ}
    (hX : AEMeasurable X μ)
    (hs : MeasurableSet s)
    (hbound : ∀ᵐ ω ∂μ, ω ∈ s → |X ω| ≤ C) :
    ProbabilityTheory.evariance (s.indicator X) μ ≤ ENNReal.ofReal (C ^ 2) := by
  sorry