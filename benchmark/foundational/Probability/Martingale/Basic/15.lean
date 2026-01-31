import Mathlib

open MeasureTheory

theorem Martingale.comp_indicator
    {Ω E ι} [Preorder ι]
    [mΩ : MeasurableSpace Ω]
    [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (μ : Measure Ω)
    (ℱ : Filtration ι mΩ)
    {f : ι → Ω → E} {s : Set Ω}
    (hf : Martingale f ℱ μ)
    (hs : ∀ i, MeasurableSet[ℱ i] s) :
    Martingale (fun i ω => s.indicator (f i) ω) ℱ μ := by
  sorry