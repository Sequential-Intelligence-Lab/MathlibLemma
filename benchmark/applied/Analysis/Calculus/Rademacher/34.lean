import Mathlib


/-
Below are many conjectural or missing-style lemmas inspired by the Rademacher file,
Lipschitz theory, line derivatives, measure theory, functional analysis, and their
interaction. All proofs are left as `sorry`.
-/
-- 35. Line derivative in direction v equals Gateaux derivative along v at differentiability points
lemma lineDeriv_eq_gateauxDeriv
    {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    [NormedAddCommGroup F] [NormedSpace ℝ F]
    {f : E → F} {x v : E}
    (hf : HasFDerivAt f (fderiv ℝ f x) x) :
    lineDeriv ℝ f x v = (fderiv ℝ f x) v := by
  sorry
