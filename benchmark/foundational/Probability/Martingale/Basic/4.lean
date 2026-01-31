import Mathlib

open MeasureTheory

theorem Martingale.comp_isometry {Ω E F ι} [Preorder ι]
    [NormedAddCommGroup E] [NormedAddCommGroup F]
    [NormedSpace ℝ E] [NormedSpace ℝ F] [CompleteSpace E] [CompleteSpace F]
    {m0 : MeasurableSpace Ω} {μ : MeasureTheory.Measure Ω}
    {ℱ : MeasureTheory.Filtration ι m0} {f : ι → Ω → E}
    (hf : MeasureTheory.Martingale f ℱ μ)
    (T : E →L[ℝ] F) (hiso : Isometry T) :
    MeasureTheory.Martingale (fun i ω => T (f i ω)) ℱ μ := by
  sorry