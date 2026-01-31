import Mathlib

open Matrix

lemma diag_diagonal_map
    {m : Type _} [DecidableEq m] [Fintype m]
    {α β : Type _} [Zero α] [Zero β]
    (f : α → β) (hf : f 0 = 0) (d : m → α) :
    Matrix.diag ((Matrix.diagonal d).map f) = fun i : m => f (d i) := by
  sorry