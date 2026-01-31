import Mathlib


/-
Invariant and forward invariant sets
-/
lemma IsInvariant.sInter {τ α} (ϕ : τ → α → α) (𝒮 : Set (Set α))
    (h𝒮 : ∀ s ∈ 𝒮, IsInvariant ϕ s) :
    IsInvariant ϕ (⋂₀ 𝒮) := by
  sorry
