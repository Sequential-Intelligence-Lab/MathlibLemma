import Mathlib

open Matrix

lemma diagonal_pow
  [Fintype n] [DecidableEq n] [Semiring α]
  (d : n → α) (k : ℕ) :
    (Matrix.diagonal d) ^ k = Matrix.diagonal (fun i => (d i) ^ k) := by
  sorry