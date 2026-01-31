import Mathlib

open MeasureTheory
open ProbabilityTheory

theorem ProbabilityTheory.Supermartingale.smul_const_ge
    {Ω ι} [Preorder ι]
    {m0 : MeasurableSpace Ω} {μ : Measure Ω}
    {ℱ : Filtration ι m0} {f : ι → Ω → ℝ}
    (hf : Supermartingale f ℱ μ) {c : ℝ} (hc : 0 ≤ c) :
    Supermartingale (fun i ω => c * f i ω) ℱ μ := by
  sorry