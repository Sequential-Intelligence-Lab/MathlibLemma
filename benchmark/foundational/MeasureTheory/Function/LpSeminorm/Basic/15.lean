import Mathlib

open MeasureTheory

lemma eLpNormEssSup_comp_mono
    {α β E} [MeasurableSpace α] [MeasurableSpace β]
    [ENorm E] {μ : Measure α} {ν : Measure β} {f : β → E} {g : α → β}
    (hg : AEMeasurable g μ) (hmono : ∀ᵐ x ∂μ, True) :
    MeasureTheory.eLpNormEssSup (f ∘ g) μ ≤
      MeasureTheory.eLpNormEssSup f (Measure.map g μ) := by
  sorry