import Mathlib


/-
Invariant and forward invariant sets
-/
lemma Flow.orbit_closure_invariant
    {τ α} [TopologicalSpace τ] [AddMonoid τ] [ContinuousAdd τ]
    [TopologicalSpace α]
    (ϕ : Flow τ α) (x : α) :
    IsInvariant ϕ (closure (Flow.orbit ϕ x)) := by
  sorry
