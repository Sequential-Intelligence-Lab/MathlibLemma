import Mathlib

open MeasureTheory

theorem Martingale.integrable_min_max
    {Ω ι : Type _} [Preorder ι]
    {m0 : MeasurableSpace Ω} {μ : Measure Ω} [IsFiniteMeasure μ]
    (ℱ : Filtration ι m0) {f g : ι → Ω → ℝ}
    (hf : Martingale f ℱ μ) (hg : Martingale g ℱ μ) :
    ∀ i, Integrable (fun ω => max (min (f i ω) (g i ω)) 0) μ := by
  sorry