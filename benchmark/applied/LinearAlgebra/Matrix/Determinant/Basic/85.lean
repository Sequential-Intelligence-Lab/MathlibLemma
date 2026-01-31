import Mathlib


/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 86. Determinant is continuous as a map of real matrices
lemma Matrix.continuous_det
    {n : Type*} [Fintype n] [DecidableEq n] :
    Continuous (fun A : Matrix n n ℝ => A.det) := by
  sorry
