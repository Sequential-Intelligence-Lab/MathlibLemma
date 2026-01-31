import Mathlib


/-
Invariant and forward invariant sets
-/
lemma IsInvariant.iUnion {τ α ι} (ϕ : τ → α → α) (s : ι → Set α)
    (hs : ∀ i, IsInvariant ϕ (s i)) :
    IsInvariant ϕ (⋃ i, s i) := by
  -- Unfold the definition of invariance
  unfold IsInvariant
  -- We need to show: for all t, MapsTo (ϕ t) (⋃ i, s i) (⋃ i, s i)
  intro t
  -- Unfold MapsTo and prove pointwise preservation
  intro x hx
  -- x ∈ ⋃ i, s i gives an index i with x ∈ s i
  rcases Set.mem_iUnion.mp hx with ⟨i, hx_i⟩
  -- Use invariance of s i
  have hi := hs i
  unfold IsInvariant at hi
  have hMaps := hi t
  -- hMaps : Set.MapsTo (ϕ t) (s i) (s i), i.e., ∀ ⦃x⦄, x ∈ s i → ϕ t x ∈ s i
  have h_mem_si : ϕ t x ∈ s i := hMaps hx_i
  -- Lift membership back to the union
  exact Set.mem_iUnion.mpr ⟨i, h_mem_si⟩