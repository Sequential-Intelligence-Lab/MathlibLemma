import Mathlib

open Metric
open NNReal

/-
Below are many conjectural or missing-style lemmas inspired by the Rademacher file,
Lipschitz theory, line derivatives, measure theory, functional analysis, and their
interaction. All proofs are left as `sorry`.
-/

/-- 22. Composition of `LipschitzOnWith` with `LipschitzWith` (post-composition). -/
lemma LipschitzOnWith.comp_lipschitz
    {E F G : Type*} [PseudoMetricSpace E] [PseudoMetricSpace F] [PseudoMetricSpace G]
    {C₁ C₂ : ℝ≥0} {f : E → F} {g : F → G} {s : Set E}
    (hf : LipschitzOnWith C₁ f s) (hg : LipschitzWith C₂ g) :
    LipschitzOnWith (C₁ * C₂) (g ∘ f) s := by
  sorry