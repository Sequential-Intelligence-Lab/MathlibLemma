import Mathlib

/-
Below are many conjectural or missing-style lemmas inspired by the Rademacher file,
Lipschitz theory, line derivatives, measure theory, functional analysis, and their
interaction. All proofs are left as `sorry`.
-/

open scoped NNReal

-- 96. Rademacher theorem for Lipschitz curves in a metric space embedded in Banach space
lemma ae_differentiable_curve_metricEmbedding
    {E X : Type*}
    [NormedAddCommGroup E] [NormedSpace ℝ E]
    [MetricSpace X]
    (i : X → E) (hi : Isometry i)
    (γ : ℝ → X) {C : ℝ≥0} (hγ : LipschitzWith C γ) :
    ∀ᵐ t : ℝ, DifferentiableAt ℝ (fun s => i (γ s)) t := by
  sorry