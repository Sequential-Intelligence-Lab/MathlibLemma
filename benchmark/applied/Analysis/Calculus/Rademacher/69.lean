import Mathlib

/-
Below are many conjectural or missing-style lemmas inspired by the Rademacher file,
Lipschitz theory, line derivatives, measure theory, functional analysis, and their
interaction. All proofs are left as `sorry`.
-/

open MeasureTheory

-- 70. Differentiability of pointwise min of two Lipschitz scalar functions almost everywhere
lemma ae_differentiableAt_min_of_Lipschitz
    {E : Type*}
    [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]
    [MeasurableSpace E] [BorelSpace E]
    (μ : Measure E)
    {f g : E → ℝ} {C : NNReal}
    (hf : LipschitzWith C f) (hg : LipschitzWith C g) :
    ∀ᵐ x ∂μ, DifferentiableAt ℝ (fun y => min (f y) (g y)) x := by
  sorry