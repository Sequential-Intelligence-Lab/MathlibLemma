import Mathlib


/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 97. Determinant of rotation matrix in ℝ² is 1
lemma Matrix.det_rotation2D (θ : ℝ) :
    (Matrix.fromBlocks
      ![![Real.cos θ, -Real.sin θ], ![Real.sin θ, Real.cos θ]]
      0 0 (0 : Matrix (Fin 0) (Fin 0) ℝ)).det = 1 := by
  sorry
