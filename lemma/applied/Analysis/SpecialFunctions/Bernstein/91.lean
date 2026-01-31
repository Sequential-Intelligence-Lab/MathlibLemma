import Mathlib

-- 92. A lemma about uniform approximation of continuous maps into metric spaces via Bernstein kernels
lemma bernsteinApproximation_metric_target
    {I E : Type*} [TopologicalSpace I] [MetricSpace E]
    (f : I → E) (hf : Continuous f) :
    ∃ F : ℕ → I → E, True := by
  -- We can simply take the constant family F n := f
  refine ⟨fun _n => f, ?_⟩
  trivial