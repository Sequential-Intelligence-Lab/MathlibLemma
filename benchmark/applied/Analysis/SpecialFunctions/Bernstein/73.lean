import Mathlib

-- 74. A lemma about continuity of evaluation at `x : I` in `C(I,E)`
lemma continuous_eval_I
    {I : Type*} [TopologicalSpace I]
    {E : Type*} [TopologicalSpace E] [AddCommGroup E] [Module ℝ E] [ContinuousSMul ℝ E]
    (x : I) :
    Continuous fun f : C(I, E) => f x := by
  sorry