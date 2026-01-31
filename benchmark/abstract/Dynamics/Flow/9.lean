import Mathlib


/-
Invariant and forward invariant sets
-/
lemma IsForwardInvariant.iInter {τ α ι} [Preorder τ] [Zero τ]
    (ϕ : τ → α → α) (s : ι → Set α)
    (hs : ∀ i, IsForwardInvariant ϕ (s i)) :
    IsForwardInvariant ϕ (⋂ i, s i) := by
  sorry
