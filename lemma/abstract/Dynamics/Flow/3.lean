import Mathlib


/-
Invariant and forward invariant sets
-/
lemma IsInvariant.iInter {τ α ι} (ϕ : τ → α → α) (s : ι → Set α)
    (hs : ∀ i, IsInvariant ϕ (s i)) :
    IsInvariant ϕ (⋂ i, s i) := by
  classical
  -- Unfold IsInvariant in hypothesis and goal
  unfold IsInvariant at hs ⊢
  -- Fix a parameter t : τ
  intro t
  -- Now goal: Set.MapsTo (ϕ t) (⋂ i, s i) (⋂ i, s i)
  intro x hx
  -- We need to show ϕ t x belongs to the intersection
  apply Set.mem_iInter.mpr
  -- Show membership in each component s i
  intro i
  -- From hx : x ∈ ⋂ i, s i, get x ∈ s i
  have hx_i : x ∈ s i := (Set.mem_iInter.mp hx) i
  -- From invariance of s i, get MapsTo (ϕ t) (s i) (s i)
  have hMaps_i : Set.MapsTo (ϕ t) (s i) (s i) := hs i t
  -- Apply this MapsTo to x
  exact hMaps_i hx_i