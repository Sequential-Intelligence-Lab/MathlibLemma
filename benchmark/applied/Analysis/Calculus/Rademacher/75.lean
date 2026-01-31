import Mathlib


/-
Below are many conjectural or missing-style lemmas inspired by the Rademacher file,
Lipschitz theory, line derivatives, measure theory, functional analysis, and their
interaction. All proofs are left as `sorry`.
-/
-- 76. Line derivative commute with linear isometry on codomain
lemma lineDeriv_map_isometry
    {E F G : Type*}
    [NormedAddCommGroup E] [NormedSpace ℝ E]
    [NormedAddCommGroup F] [NormedSpace ℝ F]
    [NormedAddCommGroup G] [NormedSpace ℝ G]
    (I : F ≃ₗᵢ[ℝ] G) {f : E → F} {x v : E} :
    lineDeriv ℝ (fun y => I (f y)) x v = I (lineDeriv ℝ f x v) := by
  sorry
