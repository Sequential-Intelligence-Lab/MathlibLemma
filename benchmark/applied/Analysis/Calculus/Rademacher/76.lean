import Mathlib


/-
Below are many conjectural or missing-style lemmas inspired by the Rademacher file,
Lipschitz theory, line derivatives, measure theory, functional analysis, and their
interaction. All proofs are left as `sorry`.
-/
-- 77. Linear dependence of lineDeriv in direction variable for C¹ function
lemma lineDeriv_linear_in_v_of_hasFDerivAt
    {E F : Type*}
    [NormedAddCommGroup E] [NormedSpace ℝ E]
    [NormedAddCommGroup F] [NormedSpace ℝ F]
    {f : E → F} {x : E} (hf : HasFDerivAt f (fderiv ℝ f x) x) :
    ∀ v w, lineDeriv ℝ f x (v + w) =
      lineDeriv ℝ f x v + lineDeriv ℝ f x w := by
  sorry
