import Mathlib

/-- If a `ℤ`-action is ergodic, then the corresponding `ℕ`-action
is also ergodic. We do not prove this lemma here.

Note: As stated, this lemma is not derivable from the given hypotheses
without additional compatibility assumptions between the `ℤ`- and `ℕ`-
actions. It is left as an admitted placeholder. -/
lemma ergodicSMul_nat_of_int
    {α : Type*} [MeasurableSpace α]
    (μ : MeasureTheory.Measure α)
    [SMul ℤ α] [SMul ℕ α]
    [ErgodicSMul ℤ α μ] :
    ErgodicSMul ℕ α μ := by
  classical
  admit