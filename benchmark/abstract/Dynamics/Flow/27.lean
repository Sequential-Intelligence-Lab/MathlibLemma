import Mathlib


/-
Invariant and forward invariant sets
-/
lemma IsForwardInvariant.interior {τ α}
    [TopologicalSpace α] [Preorder τ] [Zero τ]
    (ϕ : τ → α → α) {s : Set α}
    (hs : IsForwardInvariant ϕ s)
    (hopen : ∀ t, IsOpenMap (ϕ t)) :
    IsForwardInvariant ϕ (interior s) := by
  sorry
