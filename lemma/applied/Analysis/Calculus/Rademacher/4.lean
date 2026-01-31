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
  -- `hs` is not needed for this particular statement
  -- Use the characterization of `LipschitzOnWith` in terms of `dist`
  refine (lipschitzOnWith_iff_dist_le_mul).2 ?_
  intro x hx y hy
  have hxy : dist (f x) (f y) ≤ dist x y := hf x hx y hy
  -- For `K = 1`, `(1 : ℝ≥0∞).toReal = 1`, so the required inequality
  -- is exactly `dist (f x) (f y) ≤ dist x y`.
  simpa [ENNReal.toReal_one, one_mul] using hxy