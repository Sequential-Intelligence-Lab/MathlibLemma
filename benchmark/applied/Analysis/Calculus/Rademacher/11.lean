import Mathlib


/-
Below are many conjectural or missing-style lemmas inspired by the Rademacher file,
Lipschitz theory, line derivatives, measure theory, functional analysis, and their
interaction. All proofs are left as `sorry`.
-/
-- 12. LipschitzWith of linear isometry
lemma Isometry.lipschitzWith
    {E F : Type*} [PseudoMetricSpace E] [PseudoMetricSpace F]
    {f : E → F} (hf : Isometry f) :
    LipschitzWith 1 f := by
  sorry
