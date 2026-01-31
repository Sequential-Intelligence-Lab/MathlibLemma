import Mathlib


/-
Invariant and forward invariant sets
-/
lemma IsInvariant.closure {τ α}
    [TopologicalSpace α]
    (ϕ : τ → α → α) {s : Set α}
    (hs : IsInvariant ϕ s)
    (hcont : ∀ t, Continuous (ϕ t)) :
    IsInvariant ϕ (closure s) := by
  sorry
