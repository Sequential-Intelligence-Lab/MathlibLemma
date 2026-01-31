import Mathlib


/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 87. Determinant is differentiable as a map of real matrices
lemma Matrix.differentiable_det
    {n : Type*} [Fintype n] [DecidableEq n] :
    Differentiable ℝ (fun A : Matrix n n ℝ => A.det) := by
  sorry
