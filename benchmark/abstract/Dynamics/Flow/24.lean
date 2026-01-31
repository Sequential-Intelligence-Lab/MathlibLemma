import Mathlib


/-
Invariant and forward invariant sets
-/
lemma IsForwardInvariant.closure {τ α}
    [TopologicalSpace α] [Preorder τ] [Zero τ]
    (ϕ : τ → α → α) {s : Set α}
    (hs : IsForwardInvariant ϕ s)
    (hcont : ∀ t, Continuous (ϕ t)) :
    IsForwardInvariant ϕ (closure s) := by
  sorry
