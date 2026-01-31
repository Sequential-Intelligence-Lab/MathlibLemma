import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Matrix.det_shear2D (k : ℝ) :
    (Matrix.of fun i j : Fin 2 =>
      if i = 0 ∧ j = 0 then 1
      else if i = 0 ∧ j = 1 then k
      else if i = 1 ∧ j = 0 then 0
      else 1 : Matrix (Fin 2) (Fin 2) ℝ).det = 1 := by
  -- Simplify the matrix definition using Fin.sum_univ_succ to handle the finite sum over the matrix indices.
  simp [Matrix.det_fin_two, Fin.sum_univ_succ]
  -- Directly compute the determinant using the known formula for a 2x2 matrix.
  <;> simp [Matrix.det_fin_two, Fin.sum_univ_succ]
  -- Simplify the expression to confirm the determinant is 1.
  <;> ring