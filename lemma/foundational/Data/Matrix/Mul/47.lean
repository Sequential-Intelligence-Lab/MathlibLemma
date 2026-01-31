import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma vecMul_linear [Semiring α] [Fintype m]
    (A : Matrix m n α) :
    IsLinearMap α (fun v : m → α => Matrix.vecMul v A) := by
  constructor
  -- Prove additivity: vecMul (v + w) A = vecMul v A + vecMul w A
  intro v w
  ext i
  simp [Matrix.vecMul, dotProduct_add, add_comm, add_left_comm]
  -- Prove homogeneity: vecMul (a • v) A = a • vecMul v A
  intro a v
  ext i
  simp [Matrix.vecMul, dotProduct_smul, smul_smul]
  <;> ring