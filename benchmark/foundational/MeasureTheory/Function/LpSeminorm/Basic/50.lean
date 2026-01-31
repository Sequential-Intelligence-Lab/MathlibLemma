import Mathlib

open MeasureTheory

variable {α β E : Type _}

lemma eLpNormEssSup_map
    [MeasurableSpace α] [MeasurableSpace β]
    [NormedAddCommGroup E] [MeasurableSpace E] [MeasurableSingletonClass E]
    {μ : Measure α} {f : β → E} {g : α → β}
    (hg : AEMeasurable g μ) :
    eLpNormEssSup (fun x => f (g x)) μ ≤
      eLpNormEssSup f (Measure.map g μ) := by
  sorry