import Mathlib


/-
Below are many conjectural or missing-style lemmas inspired by the Rademacher file,
Lipschitz theory, line derivatives, measure theory, functional analysis, and their
interaction. All proofs are left as `sorry`.
-/
-- 10. Line derivative of constant function is zero
lemma lineDeriv_const
    {E F : Type*}
    [NormedAddCommGroup E] [NormedSpace ℝ E]
    [NormedAddCommGroup F] [NormedSpace ℝ F]
    (c : F) (x v : E) :
    lineDeriv ℝ (fun _ : E => c) x v = 0 := by
  sorry
