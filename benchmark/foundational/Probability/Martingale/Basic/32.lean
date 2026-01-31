import Mathlib

universe u v

open MeasureTheory

variable {Ω : Type u} {ι : Type v} [Preorder ι]

theorem Martingale.sub_const
    [mΩ : MeasurableSpace Ω] {μ : Measure Ω}
    {ℱ : Filtration ι mΩ} {f : ι → Ω → ℝ}
    (hf : Martingale f ℱ μ) (c : ℝ) :
    Martingale (fun i ω => f i ω - c) ℱ μ := by
  sorry