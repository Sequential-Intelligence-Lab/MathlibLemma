import Mathlib


/-
Below are many conjectural or missing-style lemmas inspired by the Rademacher file,
Lipschitz theory, line derivatives, measure theory, functional analysis, and their
interaction. All proofs are left as `sorry`.
-/
-- 18. Control of directional derivative by operator norm
lemma hasFDerivAt.norm_lineDeriv_le
    {E F : Type*}
    [NormedAddCommGroup E] [NormedSpace ℝ E]
    [NormedAddCommGroup F] [NormedSpace ℝ F]
    {f : E → F} {L : E →L[ℝ] F} {x v : E}
    (hf : HasFDerivAt f L x) :
    ‖lineDeriv ℝ f x v‖ ≤ ‖L‖ * ‖v‖ := by
  sorry
