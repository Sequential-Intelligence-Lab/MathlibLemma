import Mathlib

open scoped ENNReal
open MeasureTheory

lemma eLpNorm_sub_le
    {α E} [MeasurableSpace α] [NormedAddCommGroup E]
    (μ : Measure α) (p : ℝ≥0∞) (f g : α → E) :
    eLpNorm (f - g) p μ ≤ eLpNorm f p μ + eLpNorm g p μ := by
  sorry