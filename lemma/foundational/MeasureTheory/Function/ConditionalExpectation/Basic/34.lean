import Mathlib

open MeasureTheory

lemma condExp_fst_sigmaAlgebra
    {α β E} {mα : MeasurableSpace α} {mβ : MeasurableSpace β}
    {μ : Measure (α × β)}
    [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (f : α × β → E) :
    μ[f | MeasurableSpace.comap Prod.fst mα] =ᵐ[μ] μ[f | mα.comap Prod.fst] := by
  -- `mα.comap Prod.fst` is just notation for `MeasurableSpace.comap Prod.fst mα`,
  -- so both conditional expectations are definitionally the same.
  change μ[f | mα.comap Prod.fst] =ᵐ[μ] μ[f | mα.comap Prod.fst]
  exact Filter.EventuallyEq.rfl