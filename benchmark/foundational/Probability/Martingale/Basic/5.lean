import Mathlib

open MeasureTheory

theorem Martingale.comp_affine
    {Ω E F ι} [Preorder ι]
    [NormedAddCommGroup E] [NormedAddCommGroup F]
    [NormedSpace ℝ E] [NormedSpace ℝ F]
    [CompleteSpace E] [CompleteSpace F]
    {m0 : MeasurableSpace Ω} {μ : MeasureTheory.Measure Ω}
    {ℱ : MeasureTheory.Filtration ι m0} {f : ι → Ω → E}
    (hf : MeasureTheory.Martingale f ℱ μ)
    (T : E →L[ℝ] F) (b : F) :
    MeasureTheory.Martingale (fun i ω => T (f i ω) + b) ℱ μ := by
  sorry