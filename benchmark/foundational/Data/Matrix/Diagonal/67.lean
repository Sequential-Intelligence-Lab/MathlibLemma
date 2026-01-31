import Mathlib

open Matrix

variable {n : Type _} {α : Type _}

lemma diag_intCast [DecidableEq n] [Zero α] [One α] [AddGroupWithOne α] (k : ℤ) :
    Matrix.diagonal (fun _ : n => (k : α)) =
      fun i j : n => if i = j then (k : α) else 0 := by
  sorry