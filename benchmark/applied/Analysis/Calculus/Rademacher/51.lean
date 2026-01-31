import Mathlib

/-
Below are many conjectural or missing-style lemmas inspired by the Rademacher file,
Lipschitz theory, line derivatives, measure theory, functional analysis, and their
interaction. All proofs are left as `sorry`.
-/

open scoped BigOperators
open MeasureTheory

-- 52. Differentiability of convolution with smooth compactly supported kernel
lemma differentiable_convolution_smooth_compact
    {E : Type*}
    [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]
    [MeasureSpace E]
    (K : E → ℝ) (f : E → ℝ)
    (hK : ContDiff ℝ ⊤ K) (hKc : HasCompactSupport K)
    (hf : Integrable f) :
    Differentiable ℝ
      (fun x => ∫ y, K (x - y) * f y) := by
  sorry