import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diagonal_eq_scalar
    {n : Type _} {α : Type _}
    [Semiring α] [DecidableEq n] [Fintype n] (a : α) :
    Matrix.diagonal (fun _ : n => a) = Matrix.scalar n a := by
  ext i j
  by_cases hij : i = j <;> simp_all [Matrix.diagonal_apply, Matrix.scalar_apply]
  <;> aesop