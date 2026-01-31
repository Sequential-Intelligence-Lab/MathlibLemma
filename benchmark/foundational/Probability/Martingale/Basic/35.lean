import Mathlib

open MeasureTheory

theorem Martingale.sub_martingale {Ω ι} [Preorder ι]
    {m0 : MeasurableSpace Ω} {μ : MeasureTheory.Measure Ω}
    {ℱ : MeasureTheory.Filtration ι m0} {f g : ι → Ω → ℝ}
    (hf : MeasureTheory.Martingale f ℱ μ)
    (hg : MeasureTheory.Martingale g ℱ μ) :
    MeasureTheory.Martingale (fun i ω => f i ω - g i ω) ℱ μ := by
  sorry