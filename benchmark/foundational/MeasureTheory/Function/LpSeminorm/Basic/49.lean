import Mathlib

open scoped BigOperators
open MeasureTheory

lemma memLp_indicator
    {α : Type _} {E : Type _}
    [MeasurableSpace α] [NormedAddCommGroup E] [NormedSpace ℝ E]
    {μ : Measure α} {p : ENNReal} {f : α → E}
    (hf : MemLp f p μ) {s : Set α} (hs : MeasurableSet s) :
    MemLp (s.indicator f) p μ := by
  sorry