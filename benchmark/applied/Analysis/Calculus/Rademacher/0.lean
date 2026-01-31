import Mathlib


/-
Below are many conjectural or missing-style lemmas inspired by the Rademacher file,
Lipschitz theory, line derivatives, measure theory, functional analysis, and their
interaction. All proofs are left as `sorry`.
-/
-- 1. Relating lineDeriv and fderiv in finite dimensions without differentiability assumptions
lemma lineDeriv_eq_fderiv_apply_of_finiteDimensional
    {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    [NormedAddCommGroup F] [NormedSpace ℝ F]
    [FiniteDimensional ℝ E] {f : E → F} {x v : E}
    (hf : DifferentiableAt ℝ f x) :
    lineDeriv ℝ f x v = (fderiv ℝ f x) v := by
  sorry
