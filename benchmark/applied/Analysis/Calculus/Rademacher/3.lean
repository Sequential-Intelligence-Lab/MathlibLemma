import Mathlib

/-
Below are many conjectural or missing-style lemmas inspired by the Rademacher file,
Lipschitz theory, line derivatives, measure theory, functional analysis, and their
interaction. All proofs are left as `sorry`.
-/

/-- 4. LipschitzWith to uniform continuity on ℝ-vector spaces (already exists for metric spaces but we specialize). -/
lemma LipschitzWith.uniformContinuous_of_real
    {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    [MetricSpace F] {C : NNReal} {f : E → F}
    (hf : LipschitzWith C f) :
    UniformContinuous f := by
  sorry