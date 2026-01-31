import Mathlib

open MeasureTheory

variable {Ω ι : Type _}

/-- A version of `condExp_le_of_supermartingale` with a compilable statement. -/
theorem Martingale.condExp_le_of_supermartingale
    [Preorder ι]
    {m0 : MeasurableSpace Ω} {μ : Measure Ω}
    [IsFiniteMeasure μ]
    {ℱ : Filtration ι m0} {f : ι → Ω → ℝ}
    (hf : Supermartingale f ℱ μ) {i j : ι} (hij : i ≤ j) :
    μ[fun ω => f j ω | ℱ i] ≤ᵐ[μ] μ[fun ω => f i ω | ℱ i] := by
  sorry