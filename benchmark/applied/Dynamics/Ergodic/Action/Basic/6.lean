import Mathlib

universe u

/-- If the trivial group acts on `α`, then ergodicity means that measurable
sets are null or conull. -/
lemma ergodicSMul_pUnit_iff
    {α : Type u} [MeasurableSpace α] [SMul PUnit α]
    (μ : MeasureTheory.Measure α) :
    ErgodicSMul PUnit α μ ↔
      ∀ s : Set α, MeasurableSet s → (μ s = 0 ∨ μ sᶜ = 0) := by
  sorry