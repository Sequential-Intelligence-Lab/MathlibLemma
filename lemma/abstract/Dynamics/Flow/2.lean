import Mathlib


/-
Invariant and forward invariant sets
-/
lemma IsInvariant.sInter {τ α} (ϕ : τ → α → α) (𝒮 : Set (Set α))
    (h𝒮 : ∀ s ∈ 𝒮, IsInvariant ϕ s) :
    IsInvariant ϕ (⋂₀ 𝒮) := by
  -- Unfold the definition of IsInvariant
  unfold IsInvariant
  intro i
  -- Now the goal is: MapsTo (ϕ i) (⋂₀ 𝒮) (⋂₀ 𝒮)
  intro x hx
  -- We show membership in the intersection using mem_sInter.mpr
  apply Set.mem_sInter.mpr
  intro s hs
  -- From hx, we know x is in every set of 𝒮
  have hx_all := Set.mem_sInter.mp hx
  have hx_s : x ∈ s := hx_all s hs
  -- From h𝒮, s is invariant under ϕ
  have hInv : IsInvariant ϕ s := h𝒮 s hs
  -- Unfold IsInvariant for s and use the MapsTo property
  have hMap := hInv i
  exact hMap hx_s