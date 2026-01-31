import Mathlib

open Matrix

lemma diagonal_trace_eq_sum
    [Fintype n] [DecidableEq n] [CommSemiring α] (d : n → α) :
    Matrix.trace (Matrix.diagonal d : Matrix n n α) = ∑ i, d i := by
  sorry