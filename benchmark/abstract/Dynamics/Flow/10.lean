import Mathlib


/-
Invariant and forward invariant sets
-/
lemma IsForwardInvariant.sUnion {τ α} [Preorder τ] [Zero τ]
    (ϕ : τ → α → α) (𝒮 : Set (Set α))
    (h𝒮 : ∀ s ∈ 𝒮, IsForwardInvariant ϕ s) :
    IsForwardInvariant ϕ (⋃₀ 𝒮) := by
  sorry
