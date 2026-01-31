import Mathlib

open MeasureTheory

theorem Supermartingale.sub_const {Ω ι} [Preorder ι] {m0 : MeasurableSpace Ω}
    {μ : MeasureTheory.Measure Ω} {ℱ : MeasureTheory.Filtration ι m0}
    {f : ι → Ω → ℝ} (hf : MeasureTheory.Supermartingale f ℱ μ) (c : ℝ) :
    MeasureTheory.Supermartingale (fun i ω => f i ω - c) ℱ μ := by
  sorry