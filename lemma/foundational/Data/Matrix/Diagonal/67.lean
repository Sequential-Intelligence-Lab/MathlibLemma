import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diag_intCast [DecidableEq n] [Zero α] [One α] [AddGroupWithOne α] (k : ℤ) :
    Matrix.diagonal (fun _ : n => (k : α)) =
      fun i j : n => if i = j then (k : α) else 0 := by
  -- Use the `ext` lemma to reduce the problem to showing equality of corresponding entries.
  ext i j
  -- Simplify the expression using the definition of `Matrix.diagonal`.
  simp [Matrix.diagonal]
  -- Use `funext` to conclude that the functions defining the matrices are equal.
  <;> simp [funext]
  -- Handle the case analysis on `i = j` and simplify the expressions.
  <;> split_ifs <;> simp_all
  -- Use `decide` to handle the equality and inequality cases.
  <;> decide