import Mathlib

open scoped BigOperators ENNReal

open MeasureTheory

lemma eLpNorm_inter {α E} [MeasurableSpace α] [MeasurableSpace E]
    [NormedAddCommGroup E] [ContinuousENorm E]
    {μ : MeasureTheory.Measure α} {p : ℝ≥0∞} {f : α → E} {s t : Set α}
    (hs : MeasurableSet s) (ht : MeasurableSet t) :
    eLpNorm ((s ∩ t).indicator f) p μ ≤ eLpNorm (s.indicator f) p μ := by
  sorry