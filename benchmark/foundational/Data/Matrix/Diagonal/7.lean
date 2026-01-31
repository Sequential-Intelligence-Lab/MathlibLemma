import Mathlib

open Matrix

lemma diagonal_eq_scalar
    {n : Type _} {α : Type _}
    [Semiring α] [DecidableEq n] [Fintype n] (a : α) :
    Matrix.diagonal (fun _ : n => a) = Matrix.scalar n a := by
  sorry