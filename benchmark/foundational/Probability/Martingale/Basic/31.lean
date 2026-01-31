import Mathlib

open MeasureTheory

variable {Ω ι : Type*} [Preorder ι]

theorem Martingale.add_const
    {m0 : MeasurableSpace Ω} (μ : Measure Ω)
    (ℱ : Filtration ι m0) {f : ι → Ω → ℝ}
    (hf : Martingale f ℱ μ) (c : ℝ) :
    Martingale (fun i ω => f i ω + c) ℱ μ := by
  sorry