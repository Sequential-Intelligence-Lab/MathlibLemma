import Mathlib

open MeasureTheory

lemma eLpNormEssSup_restrict_subset
    {α E} [MeasurableSpace α] [NormedAddCommGroup E] [NormedSpace ℝ E]
    (μ : MeasureTheory.Measure α) (f : α → E) (s t : Set α)
    (hst : s ⊆ t) :
    MeasureTheory.eLpNormEssSup f (μ.restrict s)
      ≤ MeasureTheory.eLpNormEssSup f (μ.restrict t) := by
  sorry