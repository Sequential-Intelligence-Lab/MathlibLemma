import Mathlib

open MeasureTheory

theorem Submartingale.add_const {Ω ι} [Preorder ι] {m0 : MeasurableSpace Ω}
    {μ : Measure Ω} {ℱ : Filtration ι m0} {f : ι → Ω → ℝ}
    (hf : Submartingale f ℱ μ) (c : ℝ) :
    Submartingale (fun i ω => f i ω + c) ℱ μ := by
  sorry