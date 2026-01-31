import Mathlib

open scoped ENNReal

open MeasureTheory

lemma MemLp.comp_measurableEmbedding {α β E}
    [MeasurableSpace α] [MeasurableSpace β]
    [NormedAddCommGroup E] [NormedSpace ℝ E]
    {μ : Measure α} {p : ℝ≥0∞}
    (e : α ↪ β) (he : MeasurableEmbedding e)
    {f : β → E} (hf : MemLp f p (Measure.map e μ)) :
    MemLp (fun x => f (e x)) p μ := by
  sorry