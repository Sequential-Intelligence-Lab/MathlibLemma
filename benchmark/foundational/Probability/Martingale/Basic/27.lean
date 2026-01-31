import Mathlib

open MeasureTheory
open ProbabilityTheory

variable {Ω ι : Type*}

/-- Difference of a martingale and a supermartingale is a submartingale. -/
theorem ProbabilityTheory.Martingale.sub_supermartingale
    [Preorder ι]
    {m0 : MeasurableSpace Ω} {μ : Measure Ω}
    {ℱ : Filtration ι m0}
    {f g : ι → Ω → ℝ}
    (hf : Martingale f ℱ μ)
    (hg : Supermartingale g ℱ μ) :
    Submartingale (fun i ω => f i ω - g i ω) ℱ μ := by
  sorry