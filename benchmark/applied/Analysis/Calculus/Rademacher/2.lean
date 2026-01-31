import Mathlib


/-
Below are many conjectural or missing-style lemmas inspired by the Rademacher file,
Lipschitz theory, line derivatives, measure theory, functional analysis, and their
interaction. All proofs are left as `sorry`.
-/
-- 3. Line derivative additivity in the direction for C^1 functions
lemma lineDeriv_add_dir_of_hasFDerivAt
    {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    [NormedAddCommGroup F] [NormedSpace ℝ F]
    {f : E → F} {x v w : E}
    (hf : HasFDerivAt f (fderiv ℝ f x) x) :
    lineDeriv ℝ f x (v + w) = lineDeriv ℝ f x v + lineDeriv ℝ f x w := by
  sorry
