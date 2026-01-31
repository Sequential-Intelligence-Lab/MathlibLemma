import Mathlib

open MeasureTheory

lemma eLpNorm_add_self_le_two
    {α E} [MeasurableSpace α] [NormedAddCommGroup E]
    (μ : Measure α) (p : ENNReal) (f : α → E) :
    eLpNorm (fun x => f x + f x) p μ ≤
      2 * eLpNorm f p μ := by
  sorry