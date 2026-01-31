import Mathlib

open MeasureTheory

variable {α E 𝕜 : Type*}

lemma eLpNormEssSup_indicator_eq_of_null_compl
    [MeasurableSpace α] [NormedField 𝕜] [NormedAddCommGroup E]
    [NormedSpace 𝕜 E] {μ : Measure α}
    {f : α → E} {s : Set α} (hμ : μ sᶜ = 0) :
    eLpNormEssSup (μ := μ) (s.indicator f) = eLpNormEssSup (μ := μ) f := by
  sorry