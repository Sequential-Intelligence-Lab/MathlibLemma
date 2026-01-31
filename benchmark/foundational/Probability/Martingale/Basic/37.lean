import Mathlib

open MeasureTheory

theorem Martingale.comp_abs_submartingale
    {Ω : Type*} {ι : Type*} [Preorder ι]
    {m0 : MeasurableSpace Ω}
    (ℱ : Filtration ι m0)
    {μ : Measure Ω} [IsFiniteMeasure μ]
    {f : ι → Ω → ℝ}
    (hf : Martingale f ℱ μ) :
    Submartingale (fun i ω => |f i ω|) ℱ μ := by
  sorry