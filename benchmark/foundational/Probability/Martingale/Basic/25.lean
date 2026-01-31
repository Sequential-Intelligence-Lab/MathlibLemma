import Mathlib

open scoped BigOperators
open MeasureTheory

variable {Ω ι : Type _} [Preorder ι]

theorem Submartingale.smul_const_le
    {m0 : MeasurableSpace Ω} {μ : Measure Ω}
    {ℱ : Filtration ι m0}
    {f : ι → Ω → ℝ}
    (hf : Submartingale f ℱ μ)
    {c : ℝ} (hc : 0 ≤ c) :
    Submartingale (fun i ω => c * f i ω) ℱ μ := by
  sorry