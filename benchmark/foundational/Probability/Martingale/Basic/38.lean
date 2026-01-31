import Mathlib

open MeasureTheory

theorem Martingale.comp_posPart_submartingale
    {Ω : Type _} {ι : Type _} [Preorder ι]
    {m0 : MeasurableSpace Ω} {μ : Measure Ω} [IsFiniteMeasure μ]
    {ℱ : Filtration ι m0} {f : ι → Ω → ℝ}
    (hf : Martingale f ℱ μ) :
    Submartingale (fun i ω => max (f i ω) 0) ℱ μ := by
  sorry

theorem Martingale.comp_pos_submartingale
    {Ω : Type _} {ι : Type _} [Preorder ι]
    {m0 : MeasurableSpace Ω} {μ : Measure Ω} [IsFiniteMeasure μ]
    {ℱ : Filtration ι m0} {f : ι → Ω → ℝ}
    (hf : Martingale f ℱ μ) :
    Submartingale (fun i ω => max (f i ω) 0) ℱ μ := by
  sorry