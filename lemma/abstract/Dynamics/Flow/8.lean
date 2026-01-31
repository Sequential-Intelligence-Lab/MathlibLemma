import Mathlib


/-
Invariant and forward invariant sets
-/
lemma IsForwardInvariant.sInter {τ α} [Preorder τ] [Zero τ]
    (ϕ : τ → α → α) (𝒮 : Set (Set α))
    (h𝒮 : ∀ s ∈ 𝒮, IsForwardInvariant ϕ s) :
    IsForwardInvariant ϕ (⋂₀ 𝒮) := by
  classical
  -- Unfold the definition of forward invariance
  intro t ht
  -- Need: MapsTo (ϕ t) (⋂₀ 𝒮) (⋂₀ 𝒮)
  intro x hx
  -- Use characterization of membership in sInter
  have hx' : ∀ s ∈ 𝒮, x ∈ s := by
    -- Set.mem_sInter : x ∈ ⋂₀ 𝒮 ↔ ∀ s ∈ 𝒮, x ∈ s
    exact (Set.mem_sInter).1 hx
  -- We want to show ϕ t x ∈ ⋂₀ 𝒮, again via Set.mem_sInter
  apply (Set.mem_sInter).2
  intro s hs
  -- From forward invariance of s we get MapsTo (ϕ t) s s
  have h_inv : IsForwardInvariant ϕ s := h𝒮 s hs
  have h_maps : Set.MapsTo (ϕ t) s s := h_inv ht
  -- x ∈ s because x ∈ ⋂₀ 𝒮
  have hx_s : x ∈ s := hx' s hs
  -- Thus ϕ t x ∈ s
  exact h_maps hx_s