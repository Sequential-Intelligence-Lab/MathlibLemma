import Mathlib


/-
Invariant and forward invariant sets
-/
lemma IsForwardInvariant.iUnion {τ α ι} [Preorder τ] [Zero τ]
    (ϕ : τ → α → α) (s : ι → Set α)
    (hs : ∀ i, IsForwardInvariant ϕ (s i)) :
    IsForwardInvariant ϕ (⋃ i, s i) := by
  -- Unfold the definition of forward invariance
  unfold IsForwardInvariant at hs ⊢
  -- We must show: for every t with 0 ≤ t, ϕ t maps the union into itself
  intro t ht
  -- Now goal: Set.MapsTo (ϕ t) (⋃ i, s i) (⋃ i, s i)
  intro x hx
  -- x is in the union, so it belongs to some s i
  rcases Set.mem_iUnion.mp hx with ⟨i, hxi⟩
  -- Use forward invariance of s i
  have hfi : Set.MapsTo (ϕ t) (s i) (s i) := hs i ht
  have hx' : ϕ t x ∈ s i := hfi hxi
  -- Then ϕ t x is in the union of all s i
  exact Set.mem_iUnion.mpr ⟨i, hx'⟩