import Mathlib


/-
Invariant and forward invariant sets
-/
lemma IsForwardInvariant.sUnion {τ α} [Preorder τ] [Zero τ]
    (ϕ : τ → α → α) (𝒮 : Set (Set α))
    (h𝒮 : ∀ s ∈ 𝒮, IsForwardInvariant ϕ s) :
    IsForwardInvariant ϕ (⋃₀ 𝒮) := by
  -- Unfold the definition of forward invariance
  intro t ht
  -- We must show: MapsTo (ϕ t) (⋃₀ 𝒮) (⋃₀ 𝒮)
  intro x hx
  -- Unfold membership in the union of sets
  rcases hx with ⟨s, hsS, hx_in_s⟩
  -- Use forward invariance of this particular set `s`
  have h_s : IsForwardInvariant ϕ s := h𝒮 s hsS
  -- From forward invariance, we know ϕ t maps `s` into itself
  have hx_image : ϕ t x ∈ s := h_s ht hx_in_s
  -- Hence ϕ t x is in the union as well
  exact ⟨s, hsS, hx_image⟩