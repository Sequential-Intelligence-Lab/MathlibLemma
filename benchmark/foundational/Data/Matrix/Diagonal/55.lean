import Mathlib

open Matrix

lemma trace_eq_sum_diag'
  [Semiring α] [Fintype n] (A : Matrix n n α) :
  Matrix.trace A = ∑ i, Matrix.diag A i := by
  sorry

lemma trace_eq_sum_diag''
  [Semiring α] [Fintype n] (A : Matrix n n α) :
  Matrix.trace A = ∑ i, A i i := by
  sorry