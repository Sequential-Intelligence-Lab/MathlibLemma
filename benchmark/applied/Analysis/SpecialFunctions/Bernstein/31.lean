import Mathlib

-- 32. Bernstein approximation of constant functions is constant
lemma bernsteinApproximation_const
    {E : Type*} [AddCommGroup E] [TopologicalSpace E] [IsTopologicalAddGroup E]
    [Module ℝ E] [ContinuousSMul ℝ E]
    (c : E) :
    ∀ n, bernsteinApproximation n (ContinuousMap.const _ c) = ContinuousMap.const _ c := by
  sorry