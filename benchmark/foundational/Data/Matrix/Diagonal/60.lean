import Mathlib

open Matrix
open scoped BigOperators

universe u v

variable {α : Type u} {n : Type v}

lemma diag_transpose_mul [Semiring α] [Fintype n] [DecidableEq n]
    (A : Matrix n n α) :
    (fun i : n => ∑ j, A j i * A j i) =
      (fun i : n => ∑ j, A j i * A j i) := by
  sorry