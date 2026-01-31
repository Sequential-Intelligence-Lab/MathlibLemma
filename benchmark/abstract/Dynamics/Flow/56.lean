import Mathlib


/-
Invariant and forward invariant sets
-/
lemma Flow.forwardOrbit_closure_forwardInvariant
    {τ α} [TopologicalSpace τ] [AddMonoid τ] [ContinuousAdd τ]
    [TopologicalSpace α] [Preorder τ] [AddLeftMono τ]
    (ϕ : Flow τ α) (x : α) :
    IsForwardInvariant ϕ (closure (Flow.forwardOrbit ϕ x)) := by
  sorry
