import Mathlib

open MeasureTheory

/-- Ergodicity is preserved under measure equivalence if the action is compatible
with the equivalence. -/
lemma ergodicSMul_of_measurePreserving_equiv
    {G α β : Type*} [SMul G α] [SMul G β]
    [MeasurableSpace α] [MeasurableSpace β]
    (μ : Measure α) (ν : Measure β)
    (e : α ≃ᵐ β)
    (he : ∀ g : G, (fun x => e (g • x)) = (fun x => g • e x))
    [ErgodicSMul G α μ]
    (hmeas : Measure.map e μ = ν) :
    ErgodicSMul G β ν := by
  sorry