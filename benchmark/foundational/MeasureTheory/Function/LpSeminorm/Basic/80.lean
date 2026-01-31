import Mathlib

open scoped ENNReal

open MeasureTheory

lemma MemLp.comp_equiv_measurePreserving
    {α β E} [MeasurableSpace α] [MeasurableSpace β]
    [NormedAddCommGroup E] [NormedSpace ℝ E]
    {μ : MeasureTheory.Measure α} {ν : MeasureTheory.Measure β} {p : ℝ≥0∞}
    (e : α ≃ᵐ β) {f : β → E} (hf : MemLp f p ν)
    (hμ : MeasureTheory.Measure.map e μ = ν) :
    MemLp (fun x => f (e x)) p μ := by
  sorry