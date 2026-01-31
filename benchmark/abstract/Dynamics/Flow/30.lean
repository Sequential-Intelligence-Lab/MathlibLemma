import Mathlib


/-
Invariant and forward invariant sets
-/
lemma Flow.map_add_left {τ α} [AddMonoid τ] [TopologicalSpace τ] [ContinuousAdd τ]
    [TopologicalSpace α] (ϕ : Flow τ α) (t₁ t₂ : τ) :
    ϕ (t₁ + t₂) = fun x => ϕ t₁ (ϕ t₂ x) := by
  sorry
