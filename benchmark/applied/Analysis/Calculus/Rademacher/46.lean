import Mathlib

/-
Below are many conjectural or missing-style lemmas inspired by the Rademacher file,
Lipschitz theory, line derivatives, measure theory, functional analysis, and their
interaction. All proofs are left as `sorry`.
-/

open scoped BigOperators
open MeasureTheory

-- 47. Bound of gradient of distance-to-set function by 1 almost everywhere
lemma norm_fderiv_dist_toSet_le_one_ae
    {E : Type*}
    [NormedAddCommGroup E] [InnerProductSpace ℝ E] [FiniteDimensional ℝ E]
    [MeasurableSpace E] [BorelSpace E]
    (μ : Measure E)
    (s : Set E) (hs : IsClosed s) :
    ∀ᵐ x ∂μ, ‖fderiv ℝ (fun y : E => dist y 0) x‖ ≤ (1 : ℝ) := by
  sorry