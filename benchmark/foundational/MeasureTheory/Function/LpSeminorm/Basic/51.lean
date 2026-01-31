import Mathlib

open scoped MeasureTheory
open MeasureTheory

lemma eLpNormEssSup_map_eq_of_ae_inj
    {α β E}
    [MeasurableSpace α] [MeasurableSpace β]
    [NormedAddCommGroup E] [ENorm E]
    {μ : Measure α} {f : β → E} {g : α → β}
    (hg : AEMeasurable g μ)
    (hinj : ∀ᵐ x ∂μ, ∀ y, g y = g x → y = x) :
    eLpNormEssSup (f ∘ g) μ = eLpNormEssSup f (Measure.map g μ) := by
  sorry