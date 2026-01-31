import Mathlib

open MeasureTheory

lemma eLpNormEssSup_le_ofReal {α} [MeasurableSpace α] (μ : MeasureTheory.Measure α)
    {f : α → ℝ} {C : ℝ} (hC : ∀ᵐ x ∂μ, |f x| ≤ C) :
    MeasureTheory.eLpNormEssSup f μ ≤ ENNReal.ofReal C := by
  sorry