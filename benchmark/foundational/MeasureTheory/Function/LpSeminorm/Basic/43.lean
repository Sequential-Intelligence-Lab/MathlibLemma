import Mathlib

open MeasureTheory

lemma eLpNormEssSup_inter {α E} [MeasurableSpace α] [NormedAddCommGroup E]
    {μ : Measure α} {f : α → E} {s t : Set α}
    (hs : MeasurableSet s) (ht : MeasurableSet t) :
    eLpNormEssSup ((s ∩ t).indicator f) μ ≤
      eLpNormEssSup (s.indicator f) μ := by
  sorry