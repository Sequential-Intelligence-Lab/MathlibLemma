import Mathlib


/-
Invariant and forward invariant sets
-/

open Set

lemma IsForwardInvariant.union {τ α} [Preorder τ] [Zero τ]
    (ϕ : τ → α → α) (s t : Set α)
    (hs : IsForwardInvariant ϕ s) (ht : IsForwardInvariant ϕ t) :
    IsForwardInvariant ϕ (s ∪ t) := by
  -- Unfold the definition of forward invariance
  unfold IsForwardInvariant at hs ht ⊢
  -- Introduce time parameter and its nonnegativity
  intro u hu
  -- We must show: MapsTo (ϕ u) (s ∪ t) (s ∪ t)
  intro x hx
  -- Case analysis on membership in the union
  rcases hx with hx | hx
  · -- Case x ∈ s
    have hMaps : MapsTo (ϕ u) s s := hs hu
    have hx' : ϕ u x ∈ s := hMaps hx
    exact Or.inl hx'
  · -- Case x ∈ t
    have hMaps : MapsTo (ϕ u) t t := ht hu
    have hx' : ϕ u x ∈ t := hMaps hx
    exact Or.inr hx'