import Mathlib

open MeasureTheory

/-- If the group action is ergodic, then the only a.e.-invariant measurable subsets
are null or conull. -/
lemma ergodicSMul_measurableSet_eq_null_or_compl_null
    {G α : Type*} [SMul G α] [MeasurableSpace α] (μ : Measure α)
    [ErgodicSMul G α μ] {s : Set α} (hs : MeasurableSet s)
    (h_invar : ∀ g : G, (fun x : α => g • x) ⁻¹' s =ᵐ[μ] s) :
    μ s = 0 ∨ μ sᶜ = 0 := by
  sorry