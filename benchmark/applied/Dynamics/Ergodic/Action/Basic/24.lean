import Mathlib

open MeasureTheory

/-- If every invariant measurable subset is trivial, then the action is ergodic. -/
lemma ergodicSMul_of_invariantSets_trivial
    {G α : Type*} [SMul G α] [MeasurableSpace α]
    (μ : Measure α)
    [SMulInvariantMeasure G α μ]
    (h : ∀ s : Set α,
        MeasurableSet s →
        (∀ g : G, (g • ·) ⁻¹' s =ᵐ[μ] s) →
        μ s = 0 ∨ μ sᶜ = 0) :
    ErgodicSMul G α μ := by
  sorry