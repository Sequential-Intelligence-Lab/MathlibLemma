import Mathlib

open MeasureTheory

/-- If an additive action is ergodic, then the only a.e.-invariant measurable subsets
are null or conull. -/
lemma ergodicVAdd_measurableSet_eq_null_or_compl_null
    {G α : Type*} [VAdd G α] [MeasurableSpace α] (μ : Measure α)
    [ErgodicVAdd G α μ] {s : Set α} (hs : MeasurableSet s)
    (h_invar : ∀ g : G, (g +ᵥ ·) ⁻¹' s =ᵐ[μ] s) :
    μ s = 0 ∨ μ sᶜ = 0 := by
  sorry