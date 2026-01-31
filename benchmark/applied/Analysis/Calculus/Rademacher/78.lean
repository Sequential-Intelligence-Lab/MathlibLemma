import Mathlib


/-
Below are many conjectural or missing-style lemmas inspired by the Rademacher file,
Lipschitz theory, line derivatives, measure theory, functional analysis, and their
interaction. All proofs are left as `sorry`.
-/
-- 79. LipschitzWith constant bound from gradient bound for C¹ function
lemma LipschitzWith_of_grad_bound
    {E : Type*}
    [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]
    {f : E → ℝ}
    (hf : ContDiff ℝ 1 f)
    (hgrad : ∀ x, ‖fderiv ℝ f x‖ ≤ 1) :
    LipschitzWith 1 f := by
  sorry
