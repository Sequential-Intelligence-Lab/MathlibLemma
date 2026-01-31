import Mathlib

open scoped ENNReal
open MeasureTheory

lemma eLpNorm_restrict_univ {α E} [MeasurableSpace α]
    [NormedAddCommGroup E] [MeasurableSpace E] [BorelSpace E]
    {μ : Measure α} {p : ℝ≥0∞} (f : α → E) :
    eLpNorm f p (μ.restrict Set.univ) = eLpNorm f p μ := by
  sorry