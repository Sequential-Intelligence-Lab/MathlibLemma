import Mathlib


/-
Invariant and forward invariant sets
-/
lemma Flow.forwardOrbit_mono
    {τ α} [TopologicalSpace τ] [AddMonoid τ] [ContinuousAdd τ]
    [TopologicalSpace α] [Preorder τ] [AddLeftMono τ]
    (ϕ : Flow τ α) {x y : α}
    (hxy : y ∈ Flow.forwardOrbit ϕ x) :
    Flow.forwardOrbit ϕ y ⊆ Flow.forwardOrbit ϕ x := by
  sorry
