import Mathlib

open scoped ENNReal

lemma eLpNorm_comp_measurableEmbedding {α β E}
    [MeasurableSpace α] [MeasurableSpace β] [NormedAddCommGroup E] [NormedSpace ℝ E]
    (μ : MeasureTheory.Measure α) {p : ℝ≥0∞}
    (e : α ↪ β) (he : MeasurableEmbedding e) (f : β → E) :
    MeasureTheory.eLpNorm (fun x => f (e x)) p μ
      = MeasureTheory.eLpNorm f p (MeasureTheory.Measure.map e μ) := by
  sorry