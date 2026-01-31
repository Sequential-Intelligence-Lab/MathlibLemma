import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Matrix.det_rotation2D (θ : ℝ) :
    (Matrix.fromBlocks
      ![![Real.cos θ, -Real.sin θ], ![Real.sin θ, Real.cos θ]]
      0 0 (0 : Matrix (Fin 0) (Fin 0) ℝ)).det = 1 := by
  have h_main : (Matrix.fromBlocks ![![Real.cos θ, -Real.sin θ], ![Real.sin θ, Real.cos θ]] 0 0 (0 : Matrix (Fin 0) (Fin 0) ℝ)).det = 1 := by
    simp [Matrix.det_fin_two, Fin.sum_univ_succ, pow_two]
    <;>
    (try norm_num) <;>
    (try ring_nf) <;>
    (try simp [Real.cos_sq, Real.sin_sq]) <;>
    (try ring_nf) <;>
    (try norm_num) <;>
    (try linarith [Real.cos_le_one θ, Real.cos_le_one θ, Real.sin_le_one θ, Real.sin_le_one θ,
      Real.cos_sq_add_sin_sq θ])
    <;>
    (try field_simp [Real.cos_sq, Real.sin_sq]) <;>
    (try nlinarith [Real.cos_le_one θ, Real.cos_le_one θ, Real.sin_le_one θ, Real.sin_le_one θ,
      Real.cos_sq_add_sin_sq θ])
  exact h_main