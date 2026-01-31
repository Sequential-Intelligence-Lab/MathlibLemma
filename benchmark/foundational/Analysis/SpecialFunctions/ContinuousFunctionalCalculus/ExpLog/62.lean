import Mathlib

open Matrix

lemma CFC.exp_matrix
  {n : Type*} [Fintype n]
  (A : Matrix n n ℝ) :
  Matrix.map A Real.exp = Matrix.map A Real.exp := by
  sorry