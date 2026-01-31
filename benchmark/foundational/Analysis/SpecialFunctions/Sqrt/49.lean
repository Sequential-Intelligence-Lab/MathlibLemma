import Mathlib

open MeasureTheory

lemma aeStronglyMeasurable_sqrt {α} [MeasureSpace α]
    {μ : Measure α} {f : α → ℝ}
    (hf : AEStronglyMeasurable f μ) :
    AEStronglyMeasurable (fun x => √ (f x)) μ := by
  sorry