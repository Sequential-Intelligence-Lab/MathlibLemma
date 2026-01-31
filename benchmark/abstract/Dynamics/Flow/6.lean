import Mathlib


/-
Invariant and forward invariant sets
-/
lemma IsForwardInvariant.inter {τ α} [Preorder τ] [Zero τ]
    (ϕ : τ → α → α) (s t : Set α)
    (hs : IsForwardInvariant ϕ s) (ht : IsForwardInvariant ϕ t) :
    IsForwardInvariant ϕ (s ∩ t) := by
  sorry
