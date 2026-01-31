import Mathlib

open MeasureTheory

theorem Martingale.integrable_max_two {Ω ι}
    [Preorder ι] [Zero ι] [One ι]
    {m0 : MeasurableSpace Ω} {μ : Measure Ω} [IsFiniteMeasure μ]
    {ℱ : Filtration ι m0} {f : ι → Ω → ℝ}
    (hf : Martingale f ℱ μ)
    (h01 : Integrable (f 0) μ) (h02 : Integrable (f 1) μ) :
    Integrable (fun ω => max (f 0 ω) (f 1 ω)) μ := by
  sorry