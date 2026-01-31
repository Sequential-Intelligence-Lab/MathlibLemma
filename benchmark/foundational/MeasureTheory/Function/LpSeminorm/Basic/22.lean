import Mathlib

open scoped ENNReal
open MeasureTheory

lemma eLpNorm_le_add_of_nonneg
    {α : Type _} {E : Type _}
    [MeasurableSpace α] [NormedAddCommGroup E]
    {μ : Measure α} {p : ℝ≥0∞} {f g : α → E}
    (hf : 0 ≤ eLpNorm f p μ) :
    eLpNorm f p μ ≤ eLpNorm (fun x => f x + g x) p μ + eLpNorm g p μ := by
  sorry