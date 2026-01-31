import Mathlib

open MeasureTheory

/-- If an action is ergodic for all absolutely continuous measures with respect
to a fixed σ-finite measure, then it is ergodic for the σ-finite measure. -/
lemma ergodicSMul_of_all_ac_measures
    {G α : Type*} [SMul G α] [MeasurableSpace α]
    (μ : MeasureTheory.Measure α) [SigmaFinite μ] [SMulInvariantMeasure G α μ]
    (h_ac : ∀ ν : MeasureTheory.Measure α, ν ≪ μ → ErgodicSMul G α ν) :
    ErgodicSMul G α μ := by
  sorry