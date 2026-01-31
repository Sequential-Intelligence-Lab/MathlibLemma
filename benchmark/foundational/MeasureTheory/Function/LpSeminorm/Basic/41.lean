import Mathlib

open MeasureTheory

lemma eLpNormEssSup_sunion {α E} [MeasurableSpace α]
    [MeasurableSpace E] [NormedAddCommGroup E] [BorelSpace E]
    {μ : MeasureTheory.Measure α} {f : α → E} {s t : Set α}
    (hs : MeasurableSet s) (ht : MeasurableSet t) :
    eLpNormEssSup (fun x => (s ∪ t).indicator f x) μ
      ≤ max (eLpNormEssSup (s.indicator f) μ)
            (eLpNormEssSup (t.indicator f) μ) := by
  sorry