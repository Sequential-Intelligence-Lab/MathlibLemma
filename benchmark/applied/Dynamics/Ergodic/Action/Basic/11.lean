import Mathlib

open MeasureTheory

/-- For a finite group action that is measure-preserving, ergodicity is equivalent
to every invariant measurable set having measure 0 or 1 (for a probability measure). -/
lemma ergodicSMul_iff_probMeasure_finiteGroup
    {G α : Type*}
    [MeasurableSpace G] [Group G] [Fintype G]
    [MulAction G α]
    [MeasurableSpace α] [MeasurableSMul G α]
    (μ : Measure α)
    [IsProbabilityMeasure μ]
    [SMulInvariantMeasure G α μ] :
    ErgodicSMul G α μ ↔
      ∀ s : Set α, MeasurableSet s →
        (∀ g : G, (fun x => g • x) ⁻¹' s =ᵐ[μ] s) →
        (μ s = 0 ∨ μ s = 1) := by
  sorry