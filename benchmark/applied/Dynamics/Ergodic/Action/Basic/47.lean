import Mathlib

open MeasureTheory

/-- Ergodicity is preserved under restriction to a conull invariant subset.

This is just the statement; it is left as `sorry`. -/
lemma ergodicSMul_restrict_conull
    {G α : Type*} [SMul G α] [MeasurableSpace α]
    (μ : Measure α) [ErgodicSMul G α μ]
    {s : Set α}
    (hs_meas : MeasurableSet s)
    (hs_invar : ∀ g : G, (fun x : α => g • x) ⁻¹' s =ᵐ[μ] s)
    (hs_conull : μ sᶜ = 0) :
    ErgodicSMul G α (μ.restrict s) := by
  sorry