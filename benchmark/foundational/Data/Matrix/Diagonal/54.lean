import Mathlib

lemma trace_eq_sum_diag [Fintype n] [Semiring α] (A : Matrix n n α) :
    Matrix.trace A = ∑ i, A i i := by
  sorry