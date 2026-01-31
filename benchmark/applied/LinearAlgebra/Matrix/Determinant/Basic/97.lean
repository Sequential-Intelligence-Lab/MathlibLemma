import Mathlib


/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 98. Determinant of shear matrix in ℝ² is 1
lemma Matrix.det_shear2D (k : ℝ) :
    (Matrix.of fun i j : Fin 2 =>
      if i = 0 ∧ j = 0 then 1
      else if i = 0 ∧ j = 1 then k
      else if i = 1 ∧ j = 0 then 0
      else 1 : Matrix (Fin 2) (Fin 2) ℝ).det = 1 := by
  sorry
