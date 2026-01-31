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
  -- Unfold the LipschitzWith predicate: it is a ∀ x y, ...
  intro x y
  -- Use the isometry equality on edist
  have hdist := hf.edist_eq x y
  -- Simplify using that edist (f x) (f y) = edist x y and 1 * a = a
  simpa [hdist]