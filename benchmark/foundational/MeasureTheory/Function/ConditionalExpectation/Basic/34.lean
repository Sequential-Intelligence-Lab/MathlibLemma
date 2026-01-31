import Mathlib

open MeasureTheory

lemma condExp_fst_sigmaAlgebra
    {α β E} {mα : MeasurableSpace α} {mβ : MeasurableSpace β}
    {μ : Measure (α × β)}
    [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (f : α × β → E) :
    μ[f | MeasurableSpace.comap Prod.fst mα] =ᵐ[μ] μ[f | mα.comap Prod.fst] := by
  sorry