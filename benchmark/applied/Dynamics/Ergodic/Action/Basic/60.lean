import Mathlib

open MeasureTheory

/-- If µ is invariant and ergodic and ν is equivalent to µ, then ν is also
invariant and ergodic. -/
lemma ergodicSMul_of_invariant_equiv_measure
    {G α : Type*} [MeasurableSpace G] [SMul G α] [MeasurableSpace α]
    [MeasurableSMul G α]
    (μ ν : Measure α) [ErgodicSMul G α μ] [SMulInvariantMeasure G α μ]
    (h_equiv : μ ≪ ν ∧ ν ≪ μ)
    (h_inv : ∀ g : G, Measure.map (fun x => g • x) ν = ν) :
    ErgodicSMul G α ν := by
  sorry