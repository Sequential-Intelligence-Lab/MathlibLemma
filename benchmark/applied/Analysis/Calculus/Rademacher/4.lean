import Mathlib


/-
Below are many conjectural or missing-style lemmas inspired by the Rademacher file,
Lipschitz theory, line derivatives, measure theory, functional analysis, and their
interaction. All proofs are left as `sorry`.
-/
-- 5. Lipschitz on compact implies global Lipschitz with some constant (bounding by sup on compact)
lemma LipschitzOnWith.of_compact
    {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    [PseudoMetricSpace F] {s : Set E} (hs : IsCompact s)
    (f : E → F)
    (hf : ∀ x ∈ s, ∀ y ∈ s, dist (f x) (f y) ≤ dist x y) :
    LipschitzOnWith 1 f s := by
  sorry
