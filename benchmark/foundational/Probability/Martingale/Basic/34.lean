import Mathlib

open MeasureTheory

variable {Ω ι : Type*}

theorem Submartingale.sub_const [Preorder ι] {m0 : MeasurableSpace Ω} {μ : MeasureTheory.Measure Ω}
    {ℱ : MeasureTheory.Filtration ι m0} {f : ι → Ω → ℝ}
    (hf : MeasureTheory.Submartingale f ℱ μ) (c : ℝ) :
    MeasureTheory.Submartingale (fun i ω => f i ω - c) ℱ μ := by
  sorry