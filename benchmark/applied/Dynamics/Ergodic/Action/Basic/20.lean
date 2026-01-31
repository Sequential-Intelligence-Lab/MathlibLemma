import Mathlib

open MeasureTheory

/-- If `μ` and `ν` are mutually absolutely continuous and the action is ergodic for `μ`,
then it is ergodic for `ν`. -/
lemma ergodicSMul_of_measure_equiv
    {G α : Type*} [SMul G α] [MeasurableSpace α]
    (μ ν : Measure α) [ErgodicSMul G α μ]
    (h1 : μ ≪ ν) (h2 : ν ≪ μ) :
    ErgodicSMul G α ν := by
  sorry