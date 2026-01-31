import Mathlib


/-
Invariant and forward invariant sets
-/
lemma IsForwardInvariant.iInter {τ α ι} [Preorder τ] [Zero τ]
    (ϕ : τ → α → α) (s : ι → Set α)
    (hs : ∀ i, IsForwardInvariant ϕ (s i)) :
    IsForwardInvariant ϕ (⋂ i, s i) := by
  -- Unfold the definition of forward invariance
  unfold IsForwardInvariant at hs ⊢
  intro t ht
  -- We must show: MapsTo (ϕ t) (⋂ i, s i) (⋂ i, s i)
  intro x hx
  -- Interpret membership in the intersection
  have hx' : ∀ i, x ∈ s i := by
    simpa [Set.mem_iInter] using hx
  -- For each i, use forward invariance of s i
  have hφx : ∀ i, ϕ t x ∈ s i := fun i => (hs i ht) (hx' i)
  -- Repackage as membership in the intersection
  simpa [Set.mem_iInter] using hφx