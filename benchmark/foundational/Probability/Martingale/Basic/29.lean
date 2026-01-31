import Mathlib

open MeasureTheory

variable {Ω ι : Type*}

theorem MeasureTheory.Supermartingale.add_const
    [Preorder ι] {m0 : MeasurableSpace Ω} (μ : Measure Ω)
    (ℱ : Filtration ι m0) {f : ι → Ω → ℝ}
    (hf : Supermartingale f ℱ μ) (c : ℝ) :
    Supermartingale (fun i ω => f i ω + c) ℱ μ := by
  sorry