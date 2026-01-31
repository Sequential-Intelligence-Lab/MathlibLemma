import Mathlib

open MeasureTheory

lemma eLpNormEssSup_indicator_le_indicator {α E}
    [MeasurableSpace α] [Zero E] [ENorm E]
    {μ : Measure α} {f : α → E} {s t : Set α} (hst : s ⊆ t) :
    eLpNormEssSup (s.indicator f) μ ≤ eLpNormEssSup (t.indicator f) μ := by
  sorry