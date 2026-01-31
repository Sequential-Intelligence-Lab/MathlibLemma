import Mathlib

open MeasureTheory

theorem Martingale.comp_continuousLinearMap
    {Ω E F ι} [Preorder ι]
    [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    [NormedAddCommGroup F] [NormedSpace ℝ F] [CompleteSpace F]
    {m0 : MeasurableSpace Ω} {μ : MeasureTheory.Measure Ω}
    {ℱ : MeasureTheory.Filtration ι m0} {f : ι → Ω → E}
    (hf : MeasureTheory.Martingale f ℱ μ) (T : E →L[ℝ] F) :
    MeasureTheory.Martingale (fun i ω => T (f i ω)) ℱ μ := by
  sorry